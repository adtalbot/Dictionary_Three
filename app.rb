require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  new_word = Word.new({:name => params.fetch('word')})
  new_definition = params.fetch('definition')
  new_word.add_definition(new_definition)
  new_word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end
