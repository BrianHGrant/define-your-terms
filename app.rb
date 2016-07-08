require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('./lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words/remove') do
  @words = Word.all()
  erb(:words_remove_form)
end

get('/words/remove/:id') do
  @word = Word.find(params.fetch('id').to_i())
  Word.remove(@word.id().to_i())
  @words = Word.all()
  erb(:words_remove_form)
end

post('/words') do
  term = params.fetch('term')
  Word.new(:term => term).save()
  @words = Word.all()
  erb(:index)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @definitions = @word.definitions()
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definitions_form)
end

post('/definitions') do
  part = params.fetch('part')
  definition = params.fetch('definition')
  @definition = Definition.new(:part => part, :def => definition)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  @definitions = @word.definitions()
  erb(:word)
end
