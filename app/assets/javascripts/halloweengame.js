/**
 * @author Catherine McLoughlin
 */

/* @pjs preload= "data/halloween_background.png", "data/pumpkin_normal.png",
"data/pumpkin_shocked.png", "data/candy_corn.png", "data/ghostright.png";*/

// import minim library
// import ddf.minim.spi.*;
// import ddf.minim.signals.*;
// import ddf.minim.*;
// import ddf.minim.analysis.*;
// import ddf.minim.ugens.*;
// import ddf.minim.effects.*;

//initialize audio variable
// Minim minim;

//initialize audio file
// AudioPlayer song3;

var bertha;
var casper;

var candies = [];

var backgroundImage;
var pumpkinNormal;
var scaredPumpkin;
var candyCorn;

var state = 1;
var numGrabs = 0;
var witchGrabs = 0;

// var numFrames = 27;
// var currentFrame = 0;
// PImage[] images = new PImage[numFrames];

function preload(){
  backgroundImage = loadImage("assets/halloween_background.png");
  pumpkinNormal = loadImage("assets/halloweengame/pumpkin_normal.png");
  scaredPumpkin = loadImage("assets/pumpkin_shocked.png");
  candyCorn = loadImage("assets/candy_corn.png");
}

function setup() {
  createCanvas(800, 600);

  // set up Minim
  // minim = new Minim(this);

  //load audio file
  // song3 = minim.loadFile("data/monster_mash.mp3");;

  // song3.play();

  bertha = new Witch(800, random(height));
  casper = new Ghost(0, random(height));

   // create our candy objects
  for (var i = 0; i < 15; i++)
  {
    // build a new candy and store it in the appropriate slot
    candies.push(new CandyCorn(random(0,width), random(0,height), random(5), random(1, 3)));
  }

  // increase the detail on our Perlin Noise landscape
  noiseDetail(24);

  //load skeleton gif
  // for (int i=0; i<numFrames; i++) {
  //   images[i] = loadImage("data/giphy-" +(i+1)+ " (dragged).jpeg");
  // }
}

function draw() {
  if (state == 1) {
    frameRate(30);
    doGamePlay();
  }
  else if (state == 0) {
    background(0);
    fill(255, 140, 0);

    // frameRate(18);
    // currentFrame = (currentFrame+1) % numFrames;
    // for (int i = 1; i < 800; i+=180) {
    //   for (int j = 1; j < 550; j+=400) {
    //     image(images[(currentFrame) % numFrames], i+50, j+100, 240, 180);
    //   }
    // }

    //show scared pumpkin at cursor
    image(scaredPumpkin, mouseX, mouseY, 150, 150);

    //display points
    textAlign(CENTER);
    textSize(50);
    text("You Got Mashed.", width/2, 220);
    textSize(30);
    text("SCORE: " + (numGrabs - witchGrabs), width/2, 270);

    textSize(20);
    text("Your Candy: " + numGrabs,  width/2, 320);
    text("Evil Spirits' Candy: " + witchGrabs, width/2, 350);

    textSize(30);
    text("Press the SPACEBAR to play again!", width/2, 400);

    if (keyPressed == true && key == ' ') {
      numGrabs = 0;
      witchGrabs = 0;
      state = 1;
      bertha.xPos = 800;
      casper.xPos = 0;
    }
  }
 };

 function doGamePlay() {

   // imageMode(CORNER);
   background(backgroundImage);
   imageMode(CENTER);

    // visit all objects and tell them to display
    for (var i = 0; i < candies.length; i++)
    {
      // see if the user hit any candy
      var hitTest = candies[i].checkHit(mouseX, mouseY);
      if (hitTest) {
        // add a point!
        numGrabs++;
      }
      var witchHit  = candies[i].checkHit(bertha.xPos, bertha.yPos);
      var ghostHit = candies[i].checkHit(casper.xPos, casper.yPos);

      if (witchHit || ghostHit) {
        witchGrabs++;
      }

    candies[i].display();
    bertha.display();
    casper.display();
    }

    noCursor();

    var distance1 = dist(bertha.xPos, bertha.yPos, mouseX, mouseY);
    var distance2 = dist(casper.xPos, casper.yPos, mouseX, mouseY);

    if (distance1 < 75 || distance2 < 75) {
      state = 0;
    } else {
      image(pumpkinNormal, mouseX, mouseY, 150, 150);
    }

    //show points
    textAlign(LEFT);
    fill(255);
    textSize(30);
    text("Your Candy: " + numGrabs, 100, 40);
    text("Evil Candy: " + witchGrabs, 500, 40);
 }

function CandyCorn(x, y, f, z) {
  this.angle = 0;
  this.size = 150;
  this.xPos = x;
  this.yPos = y;

  // pick a random perlin noise index
  this.perlinIndex = random(0, 100000);

  this.fallSpeed = f;
  this.rotation = z;

  this.checkHit = function(x, y) {
    // touching
    if (x > this.xPos-(this.size/2) && x < this.xPos+(this.size/2) && y > this.yPos-(this.size/2) && y < this.yPos+(this.size/2)) {
      //hide the candy
      this.yPos = random(-300, -50);
      return true;
    } else {
      return false;
    }
  };

  this.display = function() {
    // grab a random number from the Perlin noise generator
    this.r = noise(this.perlinIndex);

    // turn that number into a number between -2 and 2 to simulate our swaying left and right
    this.xMovement = map(this.r, 0, 1, -2, 2);

    // add xMovement to our xPos
    this.xPos += this.xMovement;

    // prevent the candy corn from going off the right or left edges
    this.xPos = constrain(this.xPos, 0, width-50);

    //always dropping
    this.yPos += this.fallSpeed;

    // wrapping
    if (this.yPos > height) {
      this.yPos = -50;
    }

    // add a small amount to our Perlin noise location so next time we get a different random #
    this.perlinIndex += 0.01;

    //rotate corn
    push();
    translate(this.xPos, this.yPos);
    rotate( radians(this.angle) );

    image(candyCorn, 0, 0);

    pop();

    this.angle += this.rotation;
  }
};

function Ghost(x, y) {
  this.xSpeed = 1;
  this.xPos = x;
  this.yPos = y;
  this.ghost = loadImage("assets/ghostright.png");


  this.display = function() {
    image(this.ghost, this.xPos, this.yPos, 200, 161);
    this.xPos += this.xSpeed;
    if (this.xPos > 800) {
      this.xPos -= 800;
      this.yPos = random(height);
    }
  }
}

function Witch(x, y) {
  this.xSpeed = 1;
  this.xPos = x;
  this.yPos = y;
  this.witch = loadImage("assets/witch.png");

  this.display = function() {
    image(this.witch, this.xPos, this.yPos);
    this.xPos -= this.xSpeed;
    if (this.xPos < 0) {
      this.xPos += 800;
      this.yPos = random(height);
    }
  }
};