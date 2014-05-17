Rails.application.routes.draw do


#----USERS----

# Index page of all users (Admin User Only)
GET    '/users' =>             'users#index', as: :users
# Get page for new user creation (i.e. 'Sign-Up')
GET    '/users/new'  =>        'users#new', as: :new_user
# Process form data on new user page and add user to db.
POST   '/users' =>             'users#create'
# Get the edit user data.
GET    '/users/:id/edit' =>    'users#edit', as: :edit_user
# Show an individual user's information (optional)
## GET    '/users/:id'  =>        'users#show', as: :user
# Make udpates from the edit user page.
PATCH  '/users/:id' =>         'users#update'
# Delete the user from the database (User or Admin only)
DELETE '/users/:id'  =>        'users#destroy'


#----MESSAGES----

# Get all messages
GET    '/messages' => 'messages#index', as: :messages
# Display message by a particular user
GET    '/messages/:id' => 'messages#show', as: :messages
# Get page to create a new message by user
GET    '/messages/new' => 'messages#new', as: :new_message
# Enter the message from the form into the database
POST   '/messages' => 'messages#create'
# Get the page with the message for editing.
GET    '/messages/:id/edit' => 'messages#edit', as: :edit_message
# Update the page from the edit form in the database.
PATCH  '/messages/:id' => 'messages#update'
# Remove the message from the database (ie. 'User checkout')
DELETE '/messages/:id' => 'messages#destroy'

#----LOCATIONS----

# List of currently checked-in locations (Admin only -- Optional)
## GET    '/locations'          => 'locations#index', as: :locations
# Not sure if necessary as geocoder gem will access location data and post to db.
# GET    '/locations/new'      => 'locations#new', as: :new_location

# Post geocoder location data into db for user.
POST   '/locations'          => 'locations#create'
# Again, probably not needed.
# GET    '/locations/:id/edit' => 'locations#edit', as: :edit_location
#Used to display current location to users
GET    '/locations/:id'      => 'locations#show', as: :location

# Again, not needed as user will create a new location with new check-in.
# PATCH  '/locations/:id'      => 'locations#update'

# Remove the user's location when they have checked out.
DELETE '/locations/:id'      => 'locations#destroy'

end
