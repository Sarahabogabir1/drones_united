#------- 1 location ----------------------------------------------------------------------------------------------
Location.create(
	lat: 25.7624892,
	lng: -80.1959399,
	user_level:1,
 	name: "Southside Park",
 	address: "140 Southwest 11 Street, Miami, FL 33130",
 	picture: "southsidepark_brickell.jpg",
 	description:"Southside Park is in the heart of Brickell. It's a smaller area, and near the metro spot which a plus. The open green area is ideal for the beginner
 		that wants to stay within the premise. There are trees that surround the park, so the whole point is to fly your drone within the green area. Practice your
 		taking off and landing.Tip: This area has a play ground, so fly with caution. ")

#-------- 2 location----------------------------------------------------------------------------------------------
Location.create(
	lat: 25.978605,
	lng: -80.3328111,
	user_level:2,
 	name: "Miramar National Park",
 	address: "Miramar Pkwy, Miramar, FL 33027",
 	picture: "miramar.jpg",
 	description:"National Parks are 90% illegal but this location is not! This is a wonderful recreational area with pools, a water park, picnic areas, athletic facilities.  
 	fields & lakeside walking trails.Miramar is relatively new (built in 2007). On Saturday and 
 	On Sunday the cost is: $1.50 per person, and it’s free on weekdays. Best time to fly is weekdays during school hours. 
	There are a couple of large spots of open grassy areas. One is near the South entrance, North-West of the baseball diamonds, and
	one in the middle of the park. Sometimes there are kids playing soccer, baseball and other activities, so keep your eyes open")

#------- 3 location ----------------------------------------------------------------------------------------------

Location.create(
	lat: 26.5875088,
	lng: -80.1301359,
	user_level:1,
	name:"Buttonwood Park",
	address:"5300 Lantana Rd, Lake Worth",
	picture:"buttonwood.jpg",
	description:"This location is a bit far form Miami but its one of the best spots for a beginner.
	The grass is cut very short so you can takeoff and land as if it were paved.
	Buttonwood has three football fields worth of space.You get all three football fields to yourself. 
	During school hours on weekdays there is nobody there.
	There are pick up soccer games and football games going on during the evenings weekends.")

#------------ 4 location -----------------------------------------------------------------------------------------

Location.create(
	lat: 25.5105299,
	lng: -80.1249429,
	user_level: 3,
	name:"Haulover Park Marina",
	address:"13700 Collins Ave, Miami Beach, Fl",
	picture:"south_beach.jpg",
	description:"Flying over South Beach is among the hottest spots in Miami. The scenery is breathtaking!
	It is great for flying smaller to medium drones. 
	This spot is ideal for the creative droner looking to expand their film and photography.
	It is recommended to fly during the weekdays, early/sunset during Saturday and Sunday. Airspace is mostly dominated by kites
 	and other drones during peak hours. If you fly during the weekend, proceed with caution!")

#------------ 5 location ---------------------------------------------------------------------------------------------

Location.create(
	lat: 25.3105299,
	lng: -80.1249429,
	user_level: 3,
	name:"Lummus Park, South Beach",
	address:"Top of a building",
	picture:"lummus_park.jpg",
	description:"Great park to go for a jog, people watch, lay down under a palm tree or just sit and relax. Best times to fly drones are sunrise and sunset for best footage.
	It is harder to fly the drone during the day because of the amount of activity surrounding the area.If you are confident you can control your drone, then flying 
	during the day should not be a problem")

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
			Best to fly in the morning or at sunset. The weeekends are usually less crowded around the Brickell area")

#-----9 location ------------------------------------------------------------------------------------------------------------

Location.create(
	lat: 25.7476542,
	lng: -80.3748673,
	user_level:1,
	name:"FIU Fairgrounds Parking Lot",
	address: "SW 114th ST and 108th AVE, Miami,Fl",
	picture:"fiu.jpg",
	description:"FIU is a great spot for a beginner. You can find over a dozen pilots during the weekends, especially early in the morning. Remember: don't be shy! You might learn a lot from other droners. 
	What makes this spot ideal for a beginner is the open area where you can practice your take off and lading. and that's exactly what a beginner needs. 
	Droners have been flying in this zone for many years. Remember to be respectful and avoid flying your drone around campus because you do not want to get reported or draw attention.
	Just show up with your drone and fly! The park rangers are friendly which leaves you at ease while your are flying." )
#-------------------------------------------------------------------------------------------------------

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

