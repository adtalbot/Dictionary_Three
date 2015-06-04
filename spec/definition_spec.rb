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
  describe('#save') do
    it('adds a definition to the list of definitions') do
      test_definition = Definition.new({:meaning => 'mans best friend'})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end
