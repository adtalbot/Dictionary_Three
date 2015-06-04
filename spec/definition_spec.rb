require('rspec')
require('pry')
require('definition')
require('word')

describe(Definition) do
  before() do
    Definition.clear()
  end
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
  describe('.clear') do
    it('clears the array of saved definitions') do
      Definition.new({:meaning => 'mans best friend'}).save()
      Definition.clear()
      expect(Definition.clear()).to(eq([]))
    end
  end
end
