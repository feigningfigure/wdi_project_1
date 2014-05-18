Rails.application.routes.draw do

#----USERS----

# Index page of all users (Admin User Only)
get '/users' => 'users#index', as: :users
# Get page for new user creation (i.e. 'Sign-Up')
get    '/users/new' => 'users#new', as: :new_user
# Process form data on new user page and add user to db.
post   '/users' => 'users#create'
# Get the edit user data.
get    '/users/:id/edit' => 'users#edit', as: :edit_user
# Show an individual user's information (optional)
## get    '/users/:id'  =>        'users#show', as: :user
# Make udpates from the edit user page.
patch  '/users/:id' => 'users#update'
# Delete the user from the database (User or Admin only)
delete '/users/:id' => 'users#destroy'


#----MESSAGES----

# Get all messages
get    '/messages' => 'messages#index', as: :messages
# Display message by a particular user
get    '/messages/:id' => 'messages#show', as: :message
# Get page to create a new message by user
get    '/messages/new' => 'messages#new', as: :new_message
# Enter the message from the form into the database
post   '/messages' => 'messages#create'
# Get the page with the message for editing.
get    '/messages/:id/edit' => 'messages#edit', as: :edit_message
# Update the page from the edit form in the database.
patch  '/messages/:id' => 'messages#update'
# Remove the message from the database (ie. 'User checkout')
delete '/messages/:id' => 'messages#destroy'

#----LOCATIONS----

# List of currently checked-in locations (Admin only -- Optional)
## get    '/locations'          => 'locations#index', as: :locations
# Not sure if necessary as geocoder gem will access location data and post to db.
# get    '/locations/new'      => 'locations#new', as: :new_location

# Post geocoder location data into db for user.
post   '/locations' => 'locations#create'
# Again, probably not needed.
# get    '/locations/:id/edit' => 'locations#edit', as: :edit_location
#Used to display current location to users
get    '/locations/:id' => 'locations#show', as: :location

# Again, not needed as user will create a new location with new check-in.
# patch  '/locations/:id'      => 'locations#update'

# Remove the user's location when they have checked out.
delete '/locations/:id' => 'locations#destroy'

end
