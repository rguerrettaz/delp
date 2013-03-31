get '/restaurants/create' do
  @restaurant_id = Restaurant.last.id + 1
  @categories = Category.all
  @user = current_user
  erb :create_restaurant
end

post '/restaurants/create' do
  rest = create_restaurant(params)
  begin
    MC.set(rest.id.to_s, rest)
  rescue
  end
  create_review(params[:review])
  redirect 'restaurants/id/' + rest.id.to_s
end

get '/restaurants/id/:id' do
  get_restaurant_with_memcache()
  erb :restaurant
end

get '/write_review/:id' do
  @user = current_user if current_user
  @restaurant_id = get_restaurant_with_memcache().id
  erb :create_review
end

post '/write_review/:id' do
  create_review(params[:review])
  redirect 'restaurants/id/' + params[:id]
end

get '/categories/:id' do
  if params[:id] = 0
    @restaurants = Restaurant.all
  else
    @restaurants = Restaurant.where("category_id = ?", params[:id])
  end
  erb :categories
end

post '/search' do
  @search_term = params[:search_term]
  @results = search_results(@search_term)
  p @results
  puts '*' *300
  erb :search_results
end