helpers do
  
  def search_results(term)
    results = []
    results << Restaurant.find_by_name(term.downcase)
    if results == [nil]
      results = []
      results += levenshtein_calculator(term)
      results += Restaurant.where("name like ?", "%#{term.downcase}%")
      results.uniq!
    end
    results
  end

  def levenshtein_calculator(term)
    results = []
    restaurants = Restaurant.all
    # Levenshtein distance
    max_distance = 4
    restaurants.each do |restaurant|
      if Text::Levenshtein.distance(restaurant.name, term) < max_distance
        results << restaurant
      end
    end
    return results.sort_by{|rest| Text::Levenshtein.distance(rest.name, term)}
  end  
end