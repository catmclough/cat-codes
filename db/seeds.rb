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

