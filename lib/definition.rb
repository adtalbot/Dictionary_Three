class Definition
  attr_reader(:meaning)

  @@definitions_list = []

  define_method(:initialize) do |attributes|
    @meaning = attributes.fetch(:meaning)
  end
  define_singleton_method(:all) do
    @@definitions_list
  end
end
