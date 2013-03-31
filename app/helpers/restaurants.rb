helpers do
  def create_restaurant(params)
    restaurant = Restaurant.create(params[:restaurant])
    restaurant.categories << Category.find_by_name(params[:category])
    session[:restaurant_id] = restaurant.id
    return restaurant
  end

  def create_review(params)
    params[:user_id] = current_user.id if current_user
    @review = Review.create(params)
  end

  def get_restaurant_with_memcache
    begin
      MC.get(params[:id])
      @restaurant = MC.get(params[:id])
    rescue Exception => e
      @restaurant = Restaurant.find(params[:id])
    end 
  end

end