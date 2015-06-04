class Word
  attr_reader(:name)
  @@words = []

  define_method(:initialize) do |attributes|
    @name = name
    @word_id = @@words.length.+(1)
    @definitions = []
  end
  define_singleton_method(:all) do
    @@words = []
  end
end
