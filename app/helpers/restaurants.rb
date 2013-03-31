helpers do
  def create_restaurant(params)
    params[:restaurant][:name].downcase!
    restaurant = Restaurant.create(params[:restaurant])
    restaurant.category_id = Category.find_by_name(params[:category]).name
    session[:restaurant_id] = restaurant.id
    return restaurant
  end

  def create_review(params)
    @review = Review.create(params)
    update_restaurant_rating(params[:restaurant_id])
  end

  def update_restaurant_rating(id)
    rest = Restaurant.find(id)
    rest.rating = Review.where("restaurant_id = ?", rest.id).average("rating")
    rest.save
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