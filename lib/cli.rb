require_relative 'restaurant'
require_relative 'user'
require_relative 'review'

class Cli
attr_accessor :user, :selected_restaurant

def initialize
  @selected_restaurant = nil
  @user = nil
end


def run
  greet
  restaurant_list
  to_get_started
  restaurant_reviews_options
  select_a_review_option
  select_a_restaurant(gets.chomp)
end


  def greet
      puts 'Hello! Welcome to Yummy, the best resource for restaurant rewiew and information in the world!'
      puts " "
      puts "Please enter your your unername: "
      user_name = gets.chomp
      @user = User.create(user_name: user_name)
      puts " "
      puts " Welcome #{user.user_name}! Thinking of choosing a nice restaurant but not sure if it's good? We can help you with that decision!"
  end

  def restaurant_list
    puts "  "
      puts "Here is a list of all our restaurants: "
      puts " "
      Restaurant.all.each_with_index do|restaurant, index|
        puts "#{index+1} #{restaurant.restaurant_name}"
      end
  end
  
  def to_get_started
    puts " "
    puts "Please select a restaurant to get started: "
    puts " "
    select_a_restaurant(gets.chomp)
  end
  

  def select_a_restaurant(input)
    case input
    when "1"
      @restaurant = restaurants[0]
    when "2"
      @restaurant = restaurants[1]
    when "3"
      @restaurant = restaurants[2]
    when "4"
      @restaurant = restaurants[3]
    when "5"
      @restaurant = restaurants[4]
    when "6"
      @restaurant = restaurants[5]
    when "7"
      @restaurant = restaurants[6]
    end
  end


  def restaurant_reviews_options
    puts " "
    puts "1. Review this Restaurant"
    puts "2. Amend a review of this Restaurant"
    puts "3. Read reviews of this Restaurant"
    puts "4. Delete a review"
    puts "5. Quit"
    puts " "
    #select_a_review_option
  end
  

  def select_a_review_option
    while true
      restaurant_reviews_options
      puts " "
      puts "Select a review option: "
      puts " "
      input = gets.chomp

      case input.to_i
      when 1
        puts "Please rate the restaurant from 1-5"
        star_rating = gets.chomp
        puts "Please write your review"
        content = gets.chomp
        Review.create(content: content, star_rating: star_rating, restaurant: @restaurant, user: @user)
      when 2
        review = Review.find_by(restaurant_id: @restaurant_id)
        puts "Edit your content"
        content = gets.chomp
        puts "Edit the star rating"
        star_rating = gets.chomp
        review.update_attributes(content: content, star_rating: star_rating)
      when 3
        reviews = Review.where(restaurant: @restaurant)
        reviews.each do |review|
          puts " "
          puts " Content: #{review.content}, Star rating: #{review.star_rating}"
          puts " "
        end
      when 4
        review = Review.find_by(restaurant: @restaurant, user: @user)
        if review.present?
          review.delete
          puts "Review was successfully deleted"
        else
          puts "There is no review to delete"
        end
      when 5
        exit
      else
        "Wrong number"
      end
    end
  end
end
   


  


# As a user, I want to enter a location and be given a random nearby restaurant suggestion. (Read)
# As a user, I want to be able to write a review for a restaurant. (Create)
# As a user, I want to enter a restaurant and be given user reviews of that restaurant. (Read)
# As a user, I should be able to edit my restaurant review. (Update)
# As a user, I want to be able to delete one of my restaurant reviews. (Delete)