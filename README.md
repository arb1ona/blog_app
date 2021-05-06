Authentication helper methods

- Modified the users controller `create action` so users' are logged in once they sign-up.

- Added `set_user` method and used it as `before_action` for show, edit and update actions in users controller.
