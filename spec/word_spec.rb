require('rspec')
require('word')

describe('Word') do
  before() do
    Word.clear()
  end

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

  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new(:term => "anneal")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the array of stored words') do
      test_word = Word.new(:term => "anneal")
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.remove') do
    it('removes specified term from  stored array') do
      test_word = Word.new(:term => "anneal")
      test_word.save()
      test_word2 = Word.new(:term => "solder")
      test_word2.save()
      Word.remove((test_word2.id()))
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.find') do
    it('finds and returns word based on its id number') do
      test_word = Word.new(:term => "anneal")
      test_word.save()
      test_word2 = Word.new(:term => "solder")
      test_word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end
end
