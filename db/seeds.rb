# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# PaymentOption.create(
#     [
#         {
#             amount: 10.00,
#             amount_display: '$10',
#             description: '<strong>Basic level: </strong>You receive a great big thankyou from us!  You Rock',
#             shipping_desc: '',
#             delivery_desc: '',
#             limit: -1
#         },
#         {
#             amount: 100.00,
#             amount_display: '$100',
#             description: '<strong>Package 1: </strong>You receive our print edition',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: 250
#         },
#         {
#             amount: 125.00,
#             amount_display: '$125',
#             description: '<strong>Package 2: </strong>You will receive both our print and digital edition',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         },
#         {
#             amount: 200.00,
#             amount_display: '$200',
#             description: '<strong>Package 3: </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         },
#         {
#             amount: 250.00,
#             amount_display: '$250',
#             description: '<strong>Package 4: </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         },
#         {
#             amount: 300.00,
#             amount_display: '$300',
#             description: '<strong>Package 5: </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         },
#         {
#             amount: 500.00,
#             amount_display: '$500',
#             description: '<strong>Package 6: </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         },
#         {
#             amount: 1000.00,
#             amount_display: '$1000',
#             description: '<strong>Package 7: </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
#             shipping_desc: 'add $3 to ship outside the US',
#             delivery_desc: 'Estimated delivery: Oct 2013',
#             limit: -1
#         }
#     ])

Service.create! :Product => "Autographed CD album + AccessPass", :Description => "Receive our album on CD in your mailbox personally ...", :Est_Delivery => "february 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/Screen%20Shot%202015-04-03%20at%2011.33.41%20PM.png", :amount => 40.0, :international_shipping => "Starts at $10"
Service.create! :Product => "Executive Producer Credit + AccessPass", :Description => "The highest honor of them all: The Executive Produc...", :Est_Delivery => "from now", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/EXECUTIVE%20PRODUCER.jpg", :amount => 5000.0, :international_shipping => "N/A"
Service.create! :Product => "Full Band Concert + AccessPass", :Description => "We will offer you and your friends a musical evenin...", :Est_Delivery => "available until june 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/FULL%20BAND%20CONCERT%20HOME.jpg", :amount => 4000.0, :international_shipping => "N/A"
Service.create! :Product => "Acoustic House Concert + AccessPass", :Description => "Transform your living room into a private concert h...", :Est_Delivery => "available until june 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/13.jpg", :amount => 2500.0, :international_shipping => "N/A"
Service.create! :Product => "First Listening of the album + AccessPass", :Description => "Join us for the first listening of the album and be...", :Est_Delivery => "january 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/FIRST%20LISTENNING%20STUDIO%20VISIT.jpg", :amount => 1000.0, :international_shipping => "N/A"
Service.create! :Product => "Studio hang + AccessPass", :Description => "Come hang out with us for a studio session! Watch t...", :Est_Delivery => "october 2015", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/STUDIO%20VISIT.jpg", :amount => 600.0, :international_shipping => "N/A"
Service.create! :Product => "A dinner cooked by us + AccessPass", :Description => "What about sharing with us a typical dish concocted...", :Est_Delivery => "available until march 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/A%20DINNER%20COOK%20BY%20US%20.jpg", :amount => 450.0, :international_shipping => "N/A"
Service.create! :Product => "Singing lesson with our vocal coach + AccessPass", :Description => "Have a vocal coaching lesson with our amazing coach...", :Est_Delivery => "available until june 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/VOCAL%20COACH.jpg", :amount => 250.0, :international_shipping => "N/A"
Service.create! :Product => "Have a drink with us + AccessPass", :Description => "Let’s meet up over a drink at a mutually agreed upo...", :Est_Delivery => "available until march 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/6.jpg", :amount => 150.0, :international_shipping => "N/A"
Service.create! :Product => "Skype talk + Live performance + Access Pass", :Description => "How about meeting up on Skype for a 30-minute talk?...", :Est_Delivery => "available until march 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/SKYPE%20PERFORMANCE.jpg", :amount => 115.0, :international_shipping => "N/A"
Service.create! :Product => "Your name in the liner notes + Signed CD + AccessPa...", :Description => "Have your name mentioned in the special &quot;Thank...", :Est_Delivery => "february 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/shutterstock_230287192.jpg", :amount => 90.0, :international_shipping => "Starts at $10"
Service.create! :Product => "Autographed vinyl album + AccessPass", :Description => "Receive our album on vinyl in your mailbox, persona...", :Est_Delivery => "february 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/4.jpg", :amount => 55.0, :international_shipping => "Starts at $15"
Service.create! :Product => "Download album + AccessPass", :Description => "Pre-order our download album and receive it by e-ma...", :Est_Delivery => "february 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/album%20digital.jpg", :amount => 10.0, :international_shipping => "N/A"
Service.create! :Product => "Album on CD + AccessPass", :Description => "Receive our album on CD in your mailbox before its ...", :Est_Delivery => "february 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/album%20on%20cd.jpg", :amount => 25.0, :international_shipping => "Starts at $10"
Service.create! :Product => "Our background on your song + AccessPass", :Description => "Send us over the track, we will create a vocal back...", :Est_Delivery => "available until march 2016", :image => "https://dl.dropboxusercontent.com/u/24174291/FINALE/12.jpg", :amount => 1500.0, :international_shipping => "N/A"