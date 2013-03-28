get '/restaurants/create' do 
  erb :create_restaurant
end

post '/restaurants/create' do
  restaurant = Restaurant.create(params[:restaurant])
  redirect 'restaurants/id/' + restaurant.id.to_s
end

get '/restaurants/id/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :restaurant
end