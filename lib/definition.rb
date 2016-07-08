class Definition
  attr_reader(:id, :part, :def)
  @@definitions = []

  define_method(:initialize) do |attributes|
    @id = @@definitions.length.+(1)
    @part = attributes.fetch(:part)
    @def = attributes.fetch(:def)
  end
end
