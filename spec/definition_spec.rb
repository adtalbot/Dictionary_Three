require('rspec')
require('pry')
require('word')
require('definition')

describe(Definition) do
  describe('.all') do
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end
end
