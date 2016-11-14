require 'sinatra/base'
# require './app' #requires app.rb

# run Sinatra::Application #starts server

#require controllers
require './controllers/application_controller'
require './controllers/cat_controller'
# require './controllers/artist_controller'
# require './controllers/song_controller'

#require models BEFORE we map them
require './models/cat'


#run has to match class name in the respective controller
#this is the same as app.use('/puppy', puppymodule)
map('/') { run  ApplicationController}
map('/account') { run CatController}


# life is good?
# before/after filter
# before '/*' do
#   puts "Route Log:"
#   puts request.host
#   puts params
#   puts request.path
# end

# after '/*' do
#   puts 'Completed Route Log:'
#   puts response.body
#   puts response.status
# end