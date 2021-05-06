Listing Users

- Added an index action in the users_controller to list all users using the application.
  `def index`
  ` @users = User.all`
  `end`
- Added an index.html.erb template and filled in the code for the view using the `app/views/articles/\_article.html.erb` partial as a starting template.

- Added a link to "Bloggers" in the navigation partial which leads to the users index page.
  ` <%= link_to "Bloggers",users_path, class: "nav-link" %>`
