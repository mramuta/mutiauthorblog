get '/entries' do
  @entries = Entry.all
  erb :'entries/index'
end

get '/entries/:id' do 
	entry_id = params[:id]
	@entry = Entry.find(entry_id)
	@comments = @entry.comments
	erb :'entries/show'
end