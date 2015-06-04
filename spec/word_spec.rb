require('rspec')
require('pry')
require('word')
require('definition')

describe(Word) do
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
end
