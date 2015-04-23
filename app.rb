require('sinatra')
require('sinatra/reloader')
require('./lib/get_change')
also_reload('lib/**/*.rb')


get ('/') do
  erb(:index)
end

get('/change_returned') do
  @amount = params.fetch('number').to_i
  @return = @amount.get_change()
  erb(:change_returned)
end
