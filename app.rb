require('sinatra')
require('sinatra/reloader')
require('./lib/change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @change = params.fetch('change').change()
  erb(:output)
end
