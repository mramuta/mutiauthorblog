get '/comments/entries/:entry_id/comment/:parent_id/new' do
  @entry_id = params[:entry_id]
  @parent_id = params[:parent_id]
  if request.xhr?
    erb :'comments/new', layout: false
  else
    erb :'comments/new'
  end
end

post '/comments' do
  params[:parent_id] = nil if params[:parent_id] == 'nil'
  @comment = Comment.create(body:params[:body],entry_id:params[:entry_id],parent_comment_id:params[:parent_id],author_id:current_user.id)
  if request.xhr?
    @entry = Entry.find(params[:entry_id])
    erb :'comments/_show', locals:{comment: @comment},layout: false
  else
    redirect "/entries/#{params[:entry_id]}"
  end
end
