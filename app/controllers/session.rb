post '/sessions' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user] = @user.id
    redirect '/'
  else
    @invalid_login = 'Invalid login credentials'
    @entries = Entry.all
    erb :'entries/index'
  end
end
