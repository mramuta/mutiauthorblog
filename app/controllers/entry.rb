require 'pry'
get '/entries' do
  @entries = Entry.all
  erb :'entries/index'
end

get '/entries/new' do
  erb :'entries/new'
end

get '/entries/:id' do
	entry_id = params[:id]
	@entry = Entry.find(entry_id)
	@comments = @entry.comments.order(created_at: :desc)
	erb :'entries/show'
end

post '/entries' do
  params[:entry][:author_id] = current_user.id
  entry = Entry.new(params[:entry])
  if entry.save
    redirect "/entries/#{entry.id}"
  else
    @entry_errors = entry.errors.full_messages
    erb :'entries/new'
  end
end
