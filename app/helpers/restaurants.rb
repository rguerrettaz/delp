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

  def search_results(term)
    results = []
    results << Restaurant.find_by_name(term.downcase)

    if results == [nil]
      results = []
      # Levenshtein distance
      max_distance = 4
      results += levenshtein_calculator(term)
      results += Restaurant.where("name like ?", "%#{term.downcase}%")

      results.uniq!
    end
    results
  end
  def levenshtein_calculator(term)
    results = []
    restaurants = Restaurant.all
    max_distance = 4
    restaurants.each do |restaurant|
      if Text::Levenshtein.distance(restaurant.name, term) < max_distance
        results << restaurant
      end
    end
    return results.sort_by{|rest| Text::Levenshtein.distance(rest.name, term)}
  end
end