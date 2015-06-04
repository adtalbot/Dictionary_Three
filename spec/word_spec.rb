require('rspec')
require('pry')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end
  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves words into the empty array') do
      test_word = Word.new({:name => "squirrel", :word_id => 1})
      test_word.save
      expect(Word.all()).to(eq([test_word]))
    end
  end
  describe('.clear') do
    it('removes all words from the saved array') do
      Word.new({:name => 'dog', :word_id => 1}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe('.find') do
    it('finds words by their id') do
      test_word = Word.new({:name => 'squirrel', :word_id => 1})
      test_word.save
      test_word2 = Word.new({:name => "dog", :word_id => 2})
      test_word2.save
      expect(Word.find(test_word.word_id())).to(eq(test_word))
    end
  end
  describe('#definitions') do
    it('returns an empty array at first for definitions') do
      my_word = Word.new({:name => 'squirrel', :word_id => 1})
      expect(my_word.definitions()).to(eq([]))
    end

    it('adds a new defintion to a word') do
      test_word = Word.new({:name => 'squirrel', :word_id => 1})
      test_word.add_definition("a furry animal")
      test_word.add_definition("an animal who doesnt get me coffee")
      expect(test_word.definitions()).to(eq(['a furry animal', 'an animal who doesnt get me coffee']))
      end
    end
    describe('#add_definition') do
      it('adds a definition to a word') do
        test_word = Word.new({:name => 'squirrel', :word_id => 1})
        test_word.add_definition('a furry animal')
        expect(test_word.definitions()).to(eq(['a furry animal']))
      end
    end
  end
