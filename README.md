Authentication helper methods

- Moved the `logged_in? authentication` method from application helper to application controller and declared them as helper methods so they can be used in views as well.

- Updated pages controller home action (root route) to redirect to articles index page if users are logged in.

`def home`
`redirect_to articles_path if logged_in?`
`end`
