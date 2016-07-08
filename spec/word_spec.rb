require('rspec')
require('word')

describe('Word') do
  describe('#term') do
    it('will return the term when entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.term()).to(eq("anneal"))
    end
  end
  describe('#term') do
    it('will return the id when term entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('#term') do
    it('will return the definitions when term entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.definitions()).to(eq([]))
    end
  end
end
