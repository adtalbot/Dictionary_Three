class Word
  attr_reader(:name, :id, :definitions)

  @@words = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @definitions = []
    @id = @@words.length().+(1)
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
end
