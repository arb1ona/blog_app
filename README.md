Authentication - Login using secure password

STEP 1
Add BCrypt gem and bundle install
STEP 2
Add has_secure_password to user model  
STEP 3
Add password field to users table
a) rails generate migration add_password_digest_to_users
b) at new migration file, at change method add these lines
`def change`
`add_column :users, :password_digest, :string`
`end`
c) add password to a user in console ex:
`user=User.last`
`user.password="password123"`
`user.save`
