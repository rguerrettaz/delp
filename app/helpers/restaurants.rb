helpers do
  def create_restaurant(params)
    p params
    puts '*' *300
    restaurant = Restaurant.create(params[:restaurant])
    restaurant.categories << Category.find_by_name(params[:category])
    session[:restaurant_id] = restaurant.id
  end

  def create_review(params)
    params[:user_id] = current_user.id if current_user
    @review = Review.create(params)
  end
end