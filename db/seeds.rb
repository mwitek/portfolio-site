projects = [
  {
    name: "Funzing web application",
    description: "I worked on the MVP application and was responsible for
                  implementing the entire front end.",
    url: "http://www.funzing.com/",
    position: 0
  },
  {
    name: "Shoptagr web application",
    description: "I worked on the original MVP application. I built out the entire
                  front end and helped develop a bookmarklet that would allow
                  registered users to save items to their shoptagr account.",
    url: "http://www.shoptagr.com/",
    position: 0
  },
  {
    name: "The Design Arsenal",
    description: "I created a database syncing and deployment script which helped
                  ease the pain of developing a wordpress site locally.",
    url: "http://www.thedesignarsenal.com/",
    position: 0
  },
  {
    name: "Bespoke Offers web application",
    description: "I worked on various features within a very complex, monolithic rails app.
                  Features ranging from the client side angular shopping basket
                  to encrypting and archiving files via background jobs.",
    url: "https://www.bespokeoffers.co.uk/",
    position: 0
  },
  {
    name: "bPay e-commerce web application",
    description: "I worked with a small distributed and we created an e-commerce
                  web application in a very short amount of time. My responsibilities
                  ranged from database tuning to consumer facing front end components
                  such as the zoomable product image viewer.",
    url: "https://www.shop.bpay.co.uk/",
    position: 0
  },
  {
    name: "Phelans",
    description: "I added a polymorphic model for images and another for addresses,
                  geocoding to project locations and a custom google map to display
                  the locations.",
    url: "http://www.phelans.co.uk/",
    position: 0
  },
  {
    name: "Name The Station Game",
    description: "I worked with a team to create a slot machine style promotion
                  game for the Northern Rail. I was responsible for the game mechanics,
                  win/loss algorithm, data capturing and the prize notification system.",
    url: "",
    position: 0
  },
  {
    name: "Love Pleasure e-commerce web application",
    description: "I created a product csv import service which allowed the admin
                  to create spree commerce products in bulk with ease",
    url: "",
    position: 0
  },
  {
    name: "Top 5 Application",
    description: "I worked with a small team to create a fantasy football Node application.
                  I created the json api as well as the build scripts.",
    url: "",
    position: 0
  },
  {
    name: "Rework web application",
    description: "I've implemented various software features across the entire stack.
                  Most recently I converted the entire app from mongoDB to Postgres.",
    url: "https://re-work.co/",
    position: 0
  },
  {
    name: "Business Print Express web application",
    description: "I worked on various front end features, mostly css.",
    url: "http://www.businessprintexpress.com/",
    position: 0
  },
  {
    name: "iGraphics website",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system.",
    url: "http://igraphicspp.com/",
    position: 0
  },
  {
    name: "ICM website",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system.",
    url: "http://icmcal.com/wp/",
    position: 0
  },
  {
    name: "Leader Corporation website",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system." ,
    url: "http://www.leader-corp.com/",
    position: 0
  },
  {
    name: "Almost Flat UI Rails",
    description: "Gem I created to bundle the foundation almost-flat-ui theme",
    url: "https://github.com/mwitek/almost-flat-ui-rails/commits/master",
    position: 0
  },
  {
    name: "Node Coffee Haml Server",
    description: "A boilerplate project I set up to get up and running fast with
                  gulp, browserify, haml, jade, sass, coffeescript, and foundation",
    url: "https://github.com/mwitek/node-coffee-haml-server/commits/master?author=mwitek",
    position: 0
  },
  {
    name: "relief.io" ,
    description: "Hack4Good event that I participated in to help with the disaster
                  relief efforts in the Philippines.",
    url: "https://github.com/missinglink/relief.io/commits/master?author=mwitek",
    position: 0
  },
  {
    name: "Rails Stripe Membership Saas",
    description: "I added a javascript test suite, fixed issue with registration failures
                  and added stripe errors to the registrations edit view.",
    url: "https://github.com/RailsApps/rails-stripe-membership-saas/commits/master?author=mwitek",
    position: 0
  },
  {
    name: "CodeTriage web application",
    description: "I added a javascript testing framework and cleaned up globally
                  bound js events.",
    url: "https://github.com/codetriage/codetriage/commits/master?author=mwitek",
    position: 0
  },
  {
    name: "jQuery - EzRandomImageRotator",
    description: "A jQuery plugin for rotating images in random order",
    url: "https://github.com/mwitek/jQuery-ezRandomImageRotator/commits/master?author=mwitek",
    position: 0
  },
  {
    name: "jQuery - touchHoverToLink",
    description: "A jQuery plugin to handle touch events on a dropdown menus top level link",
    url: "https://github.com/red-green-refactor/touch-hover-to-link/commits/master?author=mwitek",
    position: 0
  }
]

projects.each do |project|
  record = Project.create!(project)
  puts "Project #{record.name} created"
end