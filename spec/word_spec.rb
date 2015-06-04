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
      test_word = Word.new({:name => "squirrel"})
      test_word.save
      expect(Word.all()).to(eq([test_word]))
    end
  end
  describe('.clear') do
    it('removes all words from the saved array') do
      Word.new({:name => 'dog'}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
end
