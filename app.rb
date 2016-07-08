require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('./lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/words/new') do
  erb(:words_form)
end

post('/words') do
  term = params.fetch('term')
  @new_word = Word.new(:term => term)
  @new_word.save()
  @words = Word.all()
  erb(:index)
end
