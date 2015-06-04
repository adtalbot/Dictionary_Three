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
end
