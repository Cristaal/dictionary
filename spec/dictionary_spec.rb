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
  describe(".all") do
    it("is empty at first") do
      expect(Term.all()).to(eq([]))
    end
  end
  describe("#save") do
    it ("adds a definition to the array of saved words") do
      test_word = Term.new("water", "wet")
      test_word.save()
      expect(Term.all()).to(eq([test_word]))
    end
  end
  describe(".find") do
     it("is able to find a searched for term") do
       test_word = Term.new("nut", "food")
       test_word.save()
       test_word_1 = Term.new("spinach", "leafy vegetable")
       test_word_1.save()
       expect(Term.find(test_word.id())).to(eq(test_word))
    end
  end
end
