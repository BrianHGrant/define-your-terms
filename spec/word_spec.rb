require('rspec')
require('word')

describe('Word') do
  describe('#term') do
    it('will return the term when entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.term()).to(eq("anneal"))
    end
  end
end
