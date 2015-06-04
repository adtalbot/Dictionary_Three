require('rspec')
require('pry')
require('definition')
require('word')

describe(Definition) do
  describe('.all') do
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end
end
