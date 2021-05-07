Restrict actions for users controller

- Added functionality for users to delete their own accounts using a destroy method in the users controller.

- Added a link to delete account to the users' profile dropdown navigation option.

- Utilized a couple of existing methods (as `before_action` methods) to secure the newly created destroy action at controller level.

- Added functionality for users to delete their own creations @user.rb
  ` has_many :articles, dependent: :delete_all`
