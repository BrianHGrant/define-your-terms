class Definition
  attr_reader(:id, :part, :def)
  @@definitions = []

  define_method(:initialize) do |attributes|
    @id = @@definitions.length.+(1)
    @part = attributes.fetch(:part)
    @def = attributes.fetch(:def)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
