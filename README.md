Restrict actions for articles controller

- Added require user method in application controller.

- Added require same user private method in articles controller.

- Used the two methods defined above as before_action methods in a few actions to restrict activities in the articles controller.
