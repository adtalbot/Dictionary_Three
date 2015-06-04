require('rspec')
require('pry')
require('word')
require('definition')

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
    it('adds a definition to the array of saved definitions') do
      test_definition = Definition.new({:definition_entry => 'furry animal'})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
  describe('.clear') do
    it('clears the array of saved definitions') do
      Definition.new({:definition_entry => 'furry animal'}).save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end
end
