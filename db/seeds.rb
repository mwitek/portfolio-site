projects = [
  {
    name: "Funzing web application",
    description: "I worked on the MVP release and added
                  the entire application front end.",
    url: "http://www.funzing.com/",
    position: 7
  },
  {
    name: "Shoptagr web application",
    description: "I worked on the original MVP release. Added the front end and
                  a bookmarklet to allow users to save items to their shoptagr
                  account.",
    url: "http://www.shoptagr.com/",
    position: 4
  },
  {
    name: "The Design Arsenal",
    description: "I created a database syncing and deployment script which helped
                  ease the pain of developing a wordpress site locally.",
    url: "http://www.thedesignarsenal.com/",
    position: 3
  },
  {
    name: "Bespoke Offers",
    description: "I worked on various features ranging from the client side angular
                  shopping basket to encrypting and archiving files via background
                  jobs.",
    url: "https://www.bespokeoffers.co.uk/",
    position: 2
  },
  {
    name: "bPay store front",
    description: "I worked on various features ranging from database tuning to
                  front end components such as the zoomable product
                  image viewer.",
    url: "https://www.shop.bpay.co.uk/",
    position: 18
  },
  {
    name: "Phelans",
    description: "I added a polymorphic model for images and another for addresses,
                  geocoding to project locations and a custom google map to display
                  the locations.",
    url: "http://www.phelans.co.uk/",
    position: 6
  },
  {
    name: "Name The Station Game",
    description: "A slot machine style game for the Northern Rail.
                  I added the game mechanics, win/loss algorithm,
                  data capturing and the prize notification system.",
    url: "#no-url-available",
    position: 1
  },
  {
    name: "Love Pleasure",
    description: "I created a product csv import service which allowed the admin
                  to create spree commerce products in bulk with ease",
    url: "#no-url-available",
    position: 5
  },
  {
    name: "Top 5 Application",
    description: "I worked with a small team to create a fantasy football Node application.
                  I created the json api as well as the build scripts.",
    url: "#no-url-available",
    position: 8
  },
  {
    name: "Rework",
    description: "I've implemented various software features across the entire stack.
                  Most recently I converted the entire app from mongoDB to Postgres.",
    url: "https://re-work.co/",
    position: 10
  },
  {
    name: "Business Print Express",
    description: "I worked on various front end features, mostly css.",
    url: "http://www.businessprintexpress.com/",
    position: 11
  },
  {
    name: "iGraphics website",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system.",
    url: "http://igraphicspp.com/",
    position: 21
  },
  {
    name: "ICM website",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system.",
    url: "http://icmcal.com/wp/",
    position: 19
  },
  {
    name: "Leader Corporation",
    description: "I was responsible for all design and development.
                  This website was built as a wordpress theme to be used with
                  the wordpress content management system." ,
    url: "http://www.leader-corp.com/",
    position: 14
  },
  {
    name: "Almost Flat UI Rails",
    description: "Gem I created to bundle the foundation almost-flat-ui theme",
    url: "https://github.com/mwitek/almost-flat-ui-rails/commits/master",
    position: 13
  },
  {
    name: "Node Coffee Haml Server",
    description: "A boilerplate project I set up to get up and running fast with
                  gulp, browserify, haml, jade, sass, coffeescript, and foundation",
    url: "https://github.com/mwitek/node-coffee-haml-server/commits/master?author=mwitek",
    position: 9
  },
  {
    name: "relief.io" ,
    description: "Hack4Good event that I participated in to help with the disaster
                  relief efforts in the Philippines.",
    url: "https://github.com/missinglink/relief.io/commits/master?author=mwitek",
    position: 15
  },
  {
    name: "Rails Stripe Membership Saas",
    description: "I added a javascript test suite, fixed issue with registration failures
                  and added stripe errors to the registrations edit view.",
    url: "https://github.com/RailsApps/rails-stripe-membership-saas/commits/master?author=mwitek",
    position: 16
  },
  {
    name: "CodeTriage",
    description: "I added a javascript testing framework and cleaned up globally
                  bound js events.",
    url: "https://github.com/codetriage/codetriage/commits/master?author=mwitek",
    position: 12
  },
  {
    name: "jQuery - Image Rotator",
    description: "A jQuery plugin for rotating images in random order",
    url: "https://github.com/mwitek/jQuery-ezRandomImageRotator/commits/master?author=mwitek",
    position: 20
  },
  {
    name: "jQuery - Touch Hover Link",
    description: "A jQuery plugin to handle touch events on a dropdown menus top level link",
    url: "https://github.com/red-green-refactor/touch-hover-to-link/commits/master?author=mwitek",
    position: 17
  }
]

projects.each do |project|
  record = Project.create!(project)
  puts "Project #{record.name} created"
end