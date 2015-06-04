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
  describe('#id') do
    it('returns the id number of a given word') do
      test_word = Word.new({:name => 'dog'})
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('#definitions') do
    it('is empty at first') do
      test_word = Word.new({:name => 'dog'})
      expect(test_word.definitions()).to(eq([]))
    end
    it('will return all definitions of a word') do
      test_word = Word.new({:name => 'dog'})
      test_word.define('mans best friend')
      test_word.define('little horses')
      expect(test_word.definitions()).to(eq(['mans best friend', 'little horses']))
    end
  end
  describe('#define') do
    it('adds a definition to a word') do
      test_word = Word.new({:name => 'dog'})
      test_word.define('mans best friend')
      expect(test_word.definitions()).to(eq(['mans best friend']))
    end
  end
end
