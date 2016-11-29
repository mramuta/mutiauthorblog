$(document).ready(function() {
  $('#entry-comments').on('click','.reply-link',function(reply){
    reply.preventDefault();
    var $replyLink = $(this);
    $.ajax({
      url: $replyLink.attr('href'),
      type: 'GET'
    }).done(function(response){
      $replyLink.hide();
      $replyLink.closest('p').append(response);
    });
  })
  $('#entry-comments').on('submit','.comment-form',function(post){
    post.preventDefault();
    var $commentForm = $(this);
    $.ajax({
      url: '/comments',
      type: 'POST',
      data: $commentForm.serialize()
    }).done(function(response){
      console.log(response)
    });
  })
});
