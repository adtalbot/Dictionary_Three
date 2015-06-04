class Definition
  attr_reader(:meaning)

  @@definitions = []

  define_method(:initialize) do |attributes|
    @meaning = attributes.fetch(:meaning)
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
