
# reach

To run the app:
1. Clone the files onto your machine.
2. Change directories to the project (cd to project)
3. Run 'bundle install'
4. Run 'rake db:migrate'
5. Run 'rails s' or 'rails server'
6. Open your internet browser and go to localhost:3000

An app to increase student involvement at university and allows students to be aware of all types of clubs, school hosted and club hosted events happening on campus.

This app features:

CRUD actions, form validations, regular expressions for searching and email validation, encryption using the bcrypt-gem, paperclip gem, the use of various association types(such as many to many, many to one, join tables, etc.), rails helpers, asset pipelining, utilizing and manipulating tables and records in mySQL databse, implementing user authenetication and managing user access, forms, partials, helpers, generating and running migrations, bootstrap, jQuery, etc. 

Note that this app is still currently in development. However, the foundation of the application has been laid out and more progress will be made as time goes on. Currently, the user authentication system works (logging in and out of an account as well), CRUD actions for clubs, users, and categories, ability for a user to register an account (with form validations), joining and leaving clubs, viewing their account information on their profile page. User passwords have been secured with the bcrypt-gem. The Admin CMS (content management system is complete). Admin users will be able to access CRUD actions for users, clubs and categories.

