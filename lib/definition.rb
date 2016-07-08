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

  define_singleton_method(:remove) do |id|
    @@definitions.delete_at(id-1)
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definitions.each do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end

end
