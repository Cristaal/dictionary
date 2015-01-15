require('rspec')
require('dictionary')
require('definition')
require('word')

describe(Definition) do
  describe("#definition") do
    it("returns the definition entered by the user") do
    test_definition = Definition.new("my name is earl", "english")
    expect(test_definition.definition()).to(eq("my name is earl"))
    end
  end
end
