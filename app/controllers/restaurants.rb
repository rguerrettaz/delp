get '/restaurants/create' do
  @categories = Category.all
  erb :create_restaurant
end

post '/restaurants/create' do
  rest = create_restaurant(params)
  MC.set(rest.id.to_s, rest)
  redirect 'restaurants/id/' + rest.id.to_s
end

get '/restaurants/id/:id' do
  get_restaurant_with_memcache()
  @rating = Review.where("restaurant_id = ?", @restaurant.id).average("rating") #find average score
  erb :restaurant
end

get '/write_review/:id' do
  @user = current_user if current_user
  get_restaurant_with_memcache()
  erb :create_review
end

post '/write_review' do
  create_review(params[:review])
  redirect '/'
end

post '/search' do
  @search_term = params[:search_term]
  p @results = search_results(@search_term)
  puts '*' * 300
  @results
  erb :search_results
end