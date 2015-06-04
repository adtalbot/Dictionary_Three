require('rspec')
require('pry')
require('word')
require('definition')

describe(Definition) do
  describe('#initialize') do
    it('returns the correct definition') do
      my_entry = 'test entry'
      my_definition = Definition.new({:definition_entry => my_entry})
      expect(my_definition.definition_entry()).to(eq(my_entry))
    end
  end  
end
