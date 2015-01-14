require ('rspec')
require ('dictionary')
require ('pry')

describe(Term) do

  describe("#word") do
    it("returns the word we want to define") do
      test_word = Term.new("elephants", "large mammals")
      #test_word.save()
      expect(test_word.word()).to(eq("elephants"))
    end
  end
  describe('#definition') do
    it("returns the definition of the word") do
      test_word = Term.new("elephants", "large")
      expect(test_word.definition()).to(eq("large"))
    end
  end
  describe("#all")
end
