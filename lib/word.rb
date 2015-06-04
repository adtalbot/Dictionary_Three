class Word
  attr_reader(:name, :id, :definitions)

  @@words = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @definitions = []
    @id = @@words.length().+(1)
  end
  define_singleton_method(:all) do
    @@words
  end
end
