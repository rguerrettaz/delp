get '/' do
  @home_nav = true
  @restaurants = Restaurant.all
  erb :index
end
