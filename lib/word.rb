require('pry')

class Word
  attr_reader(:id, :term, :definitions)
  @@words = []

  define_method(:initialize) do |attributes|
    @id = @@words.length.+(1)
    @term = attributes.fetch(:term)
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  define_singleton_method(:remove) do |id|
    @@words.delete_at(id-1)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

end
