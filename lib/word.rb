class Word
  attr_reader(:id, :term, :definitions)
  @@words = []

  define_method(:initialize) do |attributes|
    @id = @@words.length.+(1)
    @term = attributes.fetch(:term)
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words = []
  end

end
