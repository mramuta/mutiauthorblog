require 'pry'
get '/entries' do
  @entries = Entry.all
  erb :'entries/index'
end

get '/entries/:id' do
	entry_id = params[:id]
	@entry = Entry.find(entry_id)
	@comments = @entry.comments


  # def comment_to_html(comment_obj)
  #   comment_str = <<-COMMENT
  #   <ul>
  #     <li>
  #       <p>#{comment_obj.body}</p>
  #       <p>Posted: #{comment_obj.created_at} By: <a href="/users/#{comment_obj.author.id}/entries">#{comment_obj.author.username}</a></p>
  #     </li>
  #   </ul>
  #     COMMENT
  # end
  # def child_comment_to_html(comment_obj)
  #   comment_str = <<-COMMENT
  #     <li>
  #       <p>#{comment_obj.body}</p>
  #       <p>Posted: #{comment_obj.created_at} By: <a href="/users/#{comment_obj.author.id}/entries">#{comment_obj.author.username}</a></p>
  #     </li>
  #     COMMENT
  # end

  # def comment_arr(comments)
  #   comment_arr = []
  #   comments.each do |comment|
  #     if !comment.parent_comment_id
  #       comment_arr << [comment]
  #     end
  #   end
  #   comment_arr
  # end

  # def no_more_children(comment_arr)
  #   comment_arr.each do |comment_sub_arr|
  #     return false if !comment_sub_arr[-1].comments.empty?
  #   end
  #   true
  # end

  # def add_children(comment_arr)
  #   until no_more_children(comment_arr)
  #     comment_arr.each_with_index do |comment_sub_arr,i|
  #       if !comment_sub_arr[-1].comments.empty?
  #         comment_sub_arr[-1].comments.each do |child|
  #           comment_arr[i]<<child
  #         end
  #       end
  #     end
  #   end
  #   comment_arr
  # end

  # p add_children(comment_arr(@comments))

  # def comment_str(comments)
  #   comment_array = add_children(comment_arr(@comments))
  #   comment_array.each do |comment_sub_arr|
  #   end
  # end

  # def child_comments(comment)
  #   if comment.comments.empty?
  #     return comment_to_html(comment)
  #   else
  #     comment.comments.each do |child_comment|
  #       child_comments(child_comment)
  #     end
  #   end
  # end
  # @comments.each{|comment|p child_comments(comment)}


	erb :'entries/show'
end
