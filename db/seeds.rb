# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(language: "Processing",
               title: "Bart Simpson",
               description: "As my 'Hello World' project in Craig Kapp's Interactive Computing Class at NYU, I made a sketch of Bart Simpson using vector graphics. To create this simple interactive sketch I had to learn the basics of sketching in Processing, how to draw shapes on a canvas, and click-event handling. When you click on the sketch of Bart, words appear like magic!",
               date_of_creation: 20140909,
               github_url: "https://github.com/catmclough/bart-in-processing"
               )

Project.create(language: "Processing",
               title: "Halloween Game",
               description: "This is a mid-term project for Craig Kapp's Interactive Computing course at NYU. The game implements 'gravity' to make candy corns fall and rotate at random speeds and X positions on the canvas. It also uses collision detection to keep track of scores, the Minim library for sound effects, two states of gameplay, and object-oriented design. Move the pumpkin around the screen using your mouse, and collect as many candy corns as possible while avoiding the deadly ghost and witch!",
               date_of_creation: 20141028,
               github_url: "https://github.com/catmclough/processing-halloween-game"
              )

Project.create(language: "Processing",
               title: "Holiday Card",
               description: "The final exam for my Interactive Computing class was an in-class assignment to create a holiday card in one hour. The card needed to use music, a Processing library, and user interaction. I came up with a card that plays music from 'A Charlie Brown Christmas' and produces 25 white circles at the mouse's position on a click event. Those 'snowballs' are built using Processing's Fisica library and are thus given the effect of falling snow. Since the strand of 'Christmas lights' are also Fisica 'bodies', they catch the snowballs that are located above them on the X axis of the sketch as they are created. The brick wall and characters, below the lights, catch the remaining snowballs. Finally, on click, each 'light bulb' is filled with a randomly chosen festive color.",
               date_of_creation: 20141216,
               github_url: "https://github.com/catmclough/processing-holiday-card"
              )


Project.create(language: "Ruby on Rails",
               title: "WikiLeagues",
               description: "I worked on this project with a team of 4 developers over the course of 2 days at Dev Bootcamp. The premise of the project is that a client (one of our instructors) proposed the idea for a website where groups of people (such as teams, leagues, or clubs) could have a page where members of the group can post articles. The articles, as the client requested, are editable, but each time an article is edited a new 'version' is created so that older versions can still be accessed.\nWe fulfilled this requirement and added features such as secure user authentication (using BCrypt), flash notifications, a markdown editing widget, and more!",
               date_of_creation: 20150925,
               url: "https://wikileagues.herokuapp.com",
               github_url: "https://github.com/catmclough/client-wiki-project"
              )

Project.create(language: "Ruby on Rails",
               title: "NoFences",
               description: "As my final project at Dev Bootcamp, I worked on this project over the course of 8 days with 4 teammates.\nNoFences is a web application that provides a platform for newcomers to the city to get in touch with Chicagoans who want to vounteer time, goods, or services.The site also acts as an aggregator of organizations providing services to immigrants and information about demographic diversity in the City of Chicago. NoFences was built using Rails along with jQuery, Ajax, JavaScript, the D3 library, and several APIs (Facebook, Google, I18N Rails Internationalization).",
               date_of_creation: 20150925,
               url: "https://nofenceschicago.herokuapp.com",
               github_url: "https://github.com/andarcabrera/NoFences"
              )



