get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/get_cool_url' do
  @url = params.inspect
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  
  erb :get_cool_url
end

post '/post_cool_url' do
  @url = params.inspect
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  
  erb :post_cool_url
end

delete '/delete' do
  redirect '/'
end

get '/*/*/*/*/*' do
  params[:splat]
end
