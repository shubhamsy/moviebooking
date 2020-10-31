# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Admin user
user = User.create(email: "demo123@gmail.com",password: "123456")

#movies
(1..10).each do |i|
   movies = Movie.create( name: "HouseFull #{i}")
end

#screens
(1..5).each do |i|
	screens = Screen.create(name: "#{i}")
end

#shows
show = Show.create(starttime: "2020-11-21 12:00:00" ,endtime: "2020-11-21 15:00:00" ,movie_id: 1, screen_id: 1)
show = Show.create(starttime: "2020-11-21 16:00:00" ,endtime: "2020-11-21 19:00:00",movie_id: 2, screen_id: 2)
show = Show.create(starttime: "2020-11-21 12:00:00" ,endtime: "2020-11-21 15:00:00" ,movie_id: 3, screen_id: 3)
show = Show.create(starttime: "2020-11-21 20:00:00" ,endtime: "2020-11-21 23:00:00",movie_id: 4, screen_id: 4)
show = Show.create(starttime: "2020-11-21 20:00:00" ,endtime: "2020-11-21 20:00:00",movie_id: 5, screen_id: 5)
show = Show.create(starttime: "2020-11-21 16:00:00" ,endtime: "2020-11-21 19:00:00",movie_id: 3, screen_id: 3)

#seats
('A'..'J').to_a.each do |name|
	seats = Seat.create(seat_name: "#{name}",checked: false)
end

#respected rows
Seat.all.each do |seat|
	(1..12).each do |i|
   		rows = Row.create(row_number: i,seat_id: seat.id,checked: false)
	end
end