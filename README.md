# Friends List Crud App

## Getting Started

- run commands for local dev:

   ```bash
   bundle install --path vendor/bundle
   
   rails server -b 0.0.0.0
   ```

- run commands for local Docker:

   ```bash
   docker build ./ -t cruddy-friends

   docker run --network=host --mount type=bind,source="$(pwd)"/db,target=/app/db cruddy-friends
   ```

- check [http://127.0.0.1:3000](http://127.0.0.1:3000)


## Friends list is a create, read, update , delete [destroy] application built with Ruby on Rails --version [7.0]. Simply sign up for an account, and then you can add other users and link their social media accounts to their profile.

* Ruby version ~ ruby 3.0.1p64  [x86_64-darwin20]

* Uses gem 'devise', '~> 4.8', '>= 4.8.1' for user management / authentication while styled with  gem bootstrap

- Friend params require [:first_name, :last_name, :email, :phone, :twitter, :instagram, :user_id)] w/ user_id type :hidden where user_id is generated as generic unique index via migration

 ### Database creation
 - Database 'Friends' {    
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "twitter"
    t.string "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    }
    
 - Database 'users' {
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
   }

* Clone https://github.com/tboccuto/friends-list-crud-app.git and cd in dir < rails s>

* Deployment instructions
  None

* ...
