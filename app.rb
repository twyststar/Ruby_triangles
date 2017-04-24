require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @s1 = params.fetch('s1').to_i
  @s2 = params.fetch('s2').to_i
  @s3 = params.fetch('s3').to_i
  @result = Triangle.new(@s1,@s2,@s3).is_triangle()
  erb(:result)
end
