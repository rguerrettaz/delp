get '/users/signup' do
  @cohorts = Cohort.all
  erb :signup
end

post '/users/signup' do
  @user = User.new(username: params[:username], email: params[:email], password: params[:password])
  unless @user.save
    @errors = @user.errors.full_messages
    erb :signup
  else
    login
  end
end

get '/users/login' do
  erb :login
end

post '/users/login' do
  login
end

get '/users/logout' do
  session.clear
  redirect '/'
end

get '/users/profile' do
  @user = current_user
  erb :profile
end




