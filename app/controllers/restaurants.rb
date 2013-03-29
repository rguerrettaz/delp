get '/restaurants/create' do 
  @categories = Category.all
  erb :create_restaurant
end

post '/restaurants/create' do
  redirect 'restaurants/id/' + create_restaurant(params).to_s
end

get '/restaurants/id/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :restaurant
end

get '/write_review/:id' do
  @user = current_user if current_user
  @restaurant = Restaurant.find(params[:id])
  erb :create_review
end

post '/write_review' do
  create_review(params[:review])
  redirect '/'
end