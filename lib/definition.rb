class Definition
  attr_reader(:definition_entry)

  @@definitions = []

  define_method(:initialize) do |attributes|
    @definition_entry = attributes.fetch(:definition_entry)
  end
  define_singleton_method(:all) do
    @@definitions
  end  
end
