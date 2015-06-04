class Definition
  attr_reader(:meaning)

  @@definitions_list = []

  define_method(:initialize) do |attributes|
    @meaning = attributes.fetch(:meaning)
  end
  define_singleton_method(:all) do
    @@definitions_list
  end
  define_method(:save) do
    @@definitions_list.push(self)
  end
  define_singleton_method(:clear) do
    @@definitions_list = []
  end
end
