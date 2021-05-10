Add comments - separate resources

- CreateComments table
- Add refernces @migration file and the migrate
- Create Comments_Controller and add `Create` method
- Add relations at Models between `User.rb`/`Article.rb`/`Comment.rb`
- At app/views/articles add `rendered comments` and `form`
- At Articles_Controller add these lines:
  `def show`
  ` @comment = Comment.new`  
  `end`

`def set_article`  
` @article = Article.includes(:comments).find(params[:id])`  
`end`

- app/views/comments/create.js
  `console.log("comment created....")`
  `$("#post-comments").html("<%= escape_javascript(render 'articles/comments') %>")`
