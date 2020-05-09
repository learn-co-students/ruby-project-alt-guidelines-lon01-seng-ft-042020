Restaurant.destroy_all
User.destroy_all
Review.destroy_all


restaurant1 = Restaurant.create(restaurant_name: "The Queens Head", location: "London")
restaurant2 = Restaurant.create(restaurant_name: "English Grill", location: "London")
restaurant3 = Restaurant.create(restaurant_name: "Flat Iron Beak Street", location: "London")
restaurant4 = Restaurant.create(restaurant_name: "L'Oscar", location: "London")
restaurant5 = Restaurant.create(restaurant_name: "Laurent at Cafe Royal", location: "London")
restaurant6 = Restaurant.create(restaurant_name: "Soho Residence", location: "London")
restaurant7 = Restaurant.create(restaurant_name: "Luca", location: "London")


user1 = User.create(user_name: "Rob")
user2 = User.create(user_name: "July")
user3 = User.create(user_name: "Sarah")
user4 = User.create(user_name: "Erick")
user5 = User.create(user_name: "Vaq")
user6 = User.create(user_name: "Ismail")
user7 = User.create(user_name: "Dani")




review1 = Review.create(content: "This place is uniq , vintage furniture, lovely atmosphere and good food!", star_rating: 7, restaurant: restaurant1 , user: user1)
review2 = Review.create(content: "Fancy restaurant, amazing food, live music and great service!", star_rating: 8, restaurant: restaurant2 , user: user2)
review3 = Review.create(content: "Best steak in town , but long waiting to get in!", star_rating: 8, restaurant: restaurant3 , user: user3)
review4 = Review.create(content: "Lovely caffee-bar and restaurant, great food and service!", star_rating: 8, restaurant: restaurant4 , user: user4)
review5 = Review.create(content: "This is my favorite place to go for an afternoon tea, with live piano music!", star_rating: 9, restaurant: restaurant5 , user: user5)
review6 = Review.create(content: "This place is very cool if you're looking for some light food and cocktails!", star_rating: 7, restaurant: restaurant6 , user: user6)
review7 = Review.create(content: "Lovely italian restaurant, great food , I highly recommend it!", star_rating: 8, restaurant: restaurant7 , user: user7)
