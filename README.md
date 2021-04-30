before_save { self.email = email.downcase }

Notice this line - before_save { self.email = email.downcase }. Here we are referencing the email field associated with each object before saving said object so we must append the self keyword to the email we want to reference. This self is referencing each object of the User class so when the computer comes to the email field of any of these objects, it runs the downcase method on that field and then saves the object. We can now be sure that the email address will have proper formatting AND letter case before being saved to the database!
