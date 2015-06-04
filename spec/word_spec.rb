require('rspec')
require('pry')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end
  describe('#name') do
    it('returns a words name') do
      test_word = Word.new({:name => 'dog'})
      test_word.save()
      expect(test_word.name()).to(eq('dog'))
    end
  end
  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new({:name => 'dog'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
  describe('.clear') do
    it('clears the array of saved words') do
      Word.new({:name => 'dog'}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe('.find') do
    it('returns a word by its id') do
      test_word = Word.new({:name => 'dog'})
      test_word.save()
      test_word2 = Word.new({:name => 'cat'})
      test_word2.save()
      expect(Word.find(2)).to(eq(test_word2))
    end
  end
end
