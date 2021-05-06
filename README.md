Authentication helper methods

- Moved the `current_user` method from application helper to application controller and declared them as helper methods so they can be used in views as well.

  `helper_method :current_user`

  `def current_user`  
   `@current_user ||= User.find(session[:user_id]) if session[:user_id]`
  `end`

- Updated the `create` action in articles controller so the logged in user is associated with the article being created instead of hardcoding the user.

  From this: `@article.user = User.first` to this:`@article.user = current_user`
