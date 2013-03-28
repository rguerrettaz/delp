helpers do
   
  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      session[:id] = @user.id
      redirect '/users/profile'
    else
      @errors = "Invalid Password/Email combination"
      erb :login
    end
  end

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id] 
  end
end