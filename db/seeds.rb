# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(language: "Processing",
               title: "Bart Simpson",
               description: "This is my 'Hello World' project and first-ever Processing sketch. Working on this project, I learned the basics of Processing, how to draw shapes on a canvas, and event handling./nClick on the sketch for a magical interaction.",
               date_of_creation: 20140909)

Project.create(language: "Processing",
               title: "Frogger Soccer",
               description: "This game, inspired by frogger, uses collision detection to manipulate score and tackle variables that are updated on the screen as collisions ('tackles') occur. It also makes use of the Minim library to play a song throughout the game./nUse the arrow keys to move the ball to the top of the field and avoid defenders. Reaching the middle-top of the field results in a goal. Get tackled by a defender 5 times and the game is over.",
               date_of_creation: 20140916)

Project.create(language: "Ruby on Rails",
               title: "NoFences",
               description: "As my final project at Dev Bootcamp, I worked on this project over the course of 8 days with 4 teammates.\nNoFences is a web application that provides a platform for newcomers to the city to get in touch with Chicagoans who want to vounteer time, goods, or services.The site also acts as an aggregator of organizations providing services to immigrants and information about demographic diversity in the City of Chicago. NoFences was built using Rails along with jQuery, Ajax, JavaScript, the D3 library, and several APIs (Facebook, Google, I18N Rails Internationalization).",
               date_of_creation: 20150925,
               url: "https://nofenceschicago.herokuapp.com",
               github_url: "https://github.com/andarcabrera/NoFences"
              )

