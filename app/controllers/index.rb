get '/' do
  @restaurants = Restaurant.order("rating DESC")
  @pizza_rests = @restaurants.where("category_id = ?", 1)
  @mex_rests = @restaurants.where("category_id = ?", 2)
  @chinese_rests = @restaurants.where("category_id = ?", 3)
  @sushi_rests = @restaurants.where("category_id = ?", 4)
  @burger_rests = @restaurants.where("category_id = ?", 5)
  @sandwich_rests = @restaurants.where("category_id = ?", 6)
  @ethnic_rests = @restaurants.where("category_id = ?", 7)
  @other_rests = @restaurants.where("category_id = ?", 8)
  erb :index
end