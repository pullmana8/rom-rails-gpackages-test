# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'categories#home'

get '/categories/home', to: 'categories#home'

get '/packages', to: 'packages#index'
