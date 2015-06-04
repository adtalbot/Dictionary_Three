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
  describe('#save') do
    it('adds a definition to the array of saved definitions') do
      test_definition = Definition.new({:definition_entry => 'furry animal'})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end    
end
