post '/sessions' do 
	username = params[:username]
	password = params[:password]
	if username && password
		if authenticate(username,password)
			user = User.find_by(username:username)
			session['user'] = user.id
			redirect "/users/#{user.id}"
		end
	end
	@errors = "Invalid username/password combo."
	erb :'sessions/_new'
end