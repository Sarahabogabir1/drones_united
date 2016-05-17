#------- 1 location ----------------------------------------------------------------------------------------------
Location.create(
	lat: 25.7476542,
	lng: -80.3748673,
	user_level:1,
	name:"FIU Fairgrounds Parking Lot",
	address: "SW 114th ST and 108th AVE, Miami,Fl",
	picture:"drone_pic.jpg",
	description:"FIU is a great spot for a beginner.From the very start, people have been flying 
		in this zone for many years. You can find over a dozen pilots during the weekends early in the morning. 
		Just show up with your drone and fly! The park rangers are friendly which leaves you at ease while your are flying." )

#-------- 2 location----------------------------------------------------------------------------------------------
Location.create(
	lat: 25.978605,
	lng: -80.3328111,
	user_level:2,
 	name: "Miramar National Park",
 	address: "Miramar Pkwy, Miramar, FL 33027",
 	picture: "miami_city.jpg",
 	description:"Recreation area with pools, a water park, picnic areas, athletic 
 	fields & lakeside walking trails.Miramar is relatively new (built in 2007). On Saturday and 
 	Sunday the cost is: $1.50 per person, and it’s free on weekdays. Best time to fly is weekdays during school hours. 
	There are a couple of large spots of open grassy areas. One is near the South entrance, 
	one in the middle of the park, North-West of the baseball diamonds, the latter are great 
	too if you need the smooth dirt to ROG and land, and another by the West entrance. Sometimes there 
	are kids playing soccer, baseball and other activities which always come before RC flight.")

#------- 3 location ----------------------------------------------------------------------------------------------

Location.create(
	lat: 26.5875088,
	lng: -80.1301359,
	user_level:1,
	name:"Buttonwood Park",
	address:"5300 Lantana Rd, Lake Worth",
	picture:"buttonwood.jpg",
	description:"Three football fields worth of space. It usually has soccer or 
	football being played in the evenings and weekends. During school hours on weekdays
	 there is nobody there. You get all three football fields to yourself. 
 	The grass is cut very short so you can takeoff and land as if it were paved.")

#------------ 4 location -----------------------------------------------------------------------------------------

Location.create(
	lat: 25.5105299,
	lng: -80.1249429,
	user_level: 3,
	name:"Haulover Park Marina",
	address:"13700 Collins Ave, Miami Beach, Fl",
	picture:"south_beach.jpg",
	description:"Flying over South Beach is among the hottest spots. 
	It is great for flying smaller to medium drones. 
	This spot is great for the creative looking to expand their photography and film skills. 
	It is recommended to fly during the weekdays because airspace is mostly dominated by kites
 	and other drones. If you fly during the weekend, proceed with caution.")

#------------ 5 location ***FAKE ---------------------------------------------------------------------------------------------

Location.create(
	lat: 25.3105299,
	lng: -80.1249429,
	user_level: 3,
	name:"Brickell",
	address:"Top of a building",
	picture:"brickell_1.jpg",
	description:"Flying over Brickell will give you one of the best views. Possibly one of the best you will ever see.")

#------------ 6 location ***FAKE  ------------------------------------------------------------------------------------

Location.create(
	lat: 25.2105299,
	lng: -80.3249429,
	user_level: 2,
	name:"North of South Beach",
	address:"Some other place in Brickell",
	picture:"south_beach.jpg",
	description:"Some areas are very populated with people and airplanes so you need to be careful.
			Best to fly in the morning or at sunset")

#------------ 7 location ***FAKE ----------------------------------------------------------------------------------
Location.create(
	lat: 25.2105299,
	lng: -80.3249429,
	user_level: 2,
	name:"North of South Beach",
	address:"blah blah",
	picture:"drone_pic.jpg",
	description:"Some areas are very populated with people and airplanes so you need to be careful.
			Best to fly in the morning or at sunset")

#------------ 8 location ***FAKE ----------------------------------------------------------------------------------
Location.create(
	lat: 25.2105299,
	lng: -80.3249429,
	user_level: 3,
	name:"Brickell by pier",
	address:"blah blah",
	picture:"brickell-avenue.jpg",
	description:"Some areas are very populated with people and airplanes so you need to be careful.
			Best to fly in the morning or at sunset")

#-----------------------------------------------------------------------------------------------------------------

locations = Location.all

users = (1..20).map do |i|
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
end

locations.each do |location|
  review_count = rand(10) + 1
  review_count.times do |i|
    location.reviews.create!(user: users.sample, rating: rand(5) + 1, comment: Faker::StarWars.quote)  
  end   
end

