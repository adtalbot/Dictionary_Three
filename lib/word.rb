class Word
    attr_reader(:name, :word_id, :definitions)
    @@words = []

    define_method(:initialize) do |attributes|
      @name = attributes.fetch(:name)
      @word_id = attributes.fetch(:word_id)
      @word_id = @@words.length.+(1)
      @definitions = []
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

    define_singleton_method(:find) do |id|
      found_word = nil
      @@words.each() do |word|
        if word.word_id().eql?(id)
          found_word = word
        end
      end
      found_word
    end

    define_method(:add_definition) do |new_definition|
      Definition.new(:definition_entry => new_definition)
      @definitions.push(new_definition)
    end
  end
