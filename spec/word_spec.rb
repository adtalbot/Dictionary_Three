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
      test_word = Word.new({:name => 'dog', :id => 1})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
  describe('.clear') do
    it('clears the array of saved words') do
      Word.new({:name => 'dog', :id => 1}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe('#id') do
    it('returns the id number of a given word') do
      test_word = Word.new({:name => 'dog', :id => 1})
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('#definitions') do
    it('is empty at first') do
      test_word = Word.new({:name => 'dog', :id => 1})
      expect(test_word.definitions()).to(eq([]))
    end
  end
end
