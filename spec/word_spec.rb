require('rspec')
require('word')

describe('Word') do
  describe('#term') do
    it('will return the term when entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.term()).to(eq("anneal"))
    end
  end
  describe('#id') do
    it('will return the id when term entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('#definitions') do
    it('will return the definitions when term entered') do
      test_word = Word.new(:term => "anneal")
      expect(test_word.definitions()).to(eq([]))
    end
  end
  describe('.all') do
    it('will return an empty array when no instances of Word') do
      expect(Word.all()).to(eq([]))
    end
  end
end
