Topic.create(name: "Food")

pizza      = Category.create(topic_id: 1, name: "Pizza")
mexican    = Category.create(topic_id: 1, name: "Mexican")
chinese    = Category.create(topic_id: 1, name: "Chinese")
sushi      = Category.create(topic_id: 1, name: "Sushi")
burgers    = Category.create(topic_id: 1, name: "Burgers")
sandwiches = Category.create(topic_id: 1, name: "Sandwiches")
ethnic     = Category.create(topic_id: 1, name: "Ethnic Eats")
other      = Category.create(topic_id: 1, name: "Other")

######## Create pizza Restaurants ########

rest1 = Restaurant.create(name: "Test 1", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

pizza_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
pizza_restaurants.each do |restaurant|
  restaurant.category_id = pizza.id
  restaurant.save
end

######## Create Mexican Restaurants ########

rest1 = Restaurant.create(name: "pasilla", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria zorro", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

mexican_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
mexican_restaurants.each do |restaurant|
  restaurant.category_id = mexican.id
  restaurant.save
end

######## Create chinese Restaurants ########

rest1 = Restaurant.create(name: "Test 3", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

chinese_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
chinese_restaurants.each do |restaurant|
  restaurant.category_id = chinese.id
  restaurant.save
end

######## Create sushi Restaurants ########

rest1 = Restaurant.create(name: "Test 4", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

sushi_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
sushi_restaurants.each do |restaurant|
  restaurant.category_id = sushi.id
  restaurant.save
end

######## Create burgers Restaurants ########

rest1 = Restaurant.create(name: "Test 5", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

burgers_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
burgers_restaurants.each do |restaurant|
  restaurant.category_id = burgers.id
  restaurant.save
end

######## Create sandwiches Restaurants ########

rest1 = Restaurant.create(name: "Test 6", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

sandwiches_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
sandwiches_restaurants.each do |restaurant|
  restaurant.category_id = sandwiches.id
  restaurant.save
end

######## Create ethnic Restaurants ########

rest1 = Restaurant.create(name: "Test7", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

ethnic_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
ethnic_restaurants.each do |restaurant|
  restaurant.category_id = ethnic.id
  restaurant.save
end

######## Create other Restaurants ########

rest1 = Restaurant.create(name: "Test8", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest2 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest3 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest4 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest5 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest6 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest7 = Restaurant.create(name: "taqueria mana", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
rest8 = Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

other_restaurants = [rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8]
other_restaurants.each do |restaurant|
  restaurant.category_id = other.id
  restaurant.save
end

Cohort.create(name: "Sea Lions")
Cohort.create(name: "Banana Slugs")
Cohort.create(name: "Golden Bears")
Cohort.create(name: "Fiery Skippers")