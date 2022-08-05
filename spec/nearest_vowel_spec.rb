require 'nearest_vowel'

describe Searcher do
  context "When giving it sentences" do
    s = Searcher.new
    it "first test" do
      r = s.nearest_vowel("abbb")
      expect(r).to contain_exactly(0, 1, 2, 3)
    end

    it "second test" do
      r = s.nearest_vowel("This is the Renuo Coding challenge")
      expect(r).to contain_exactly(2, 1, 0, 1, 1, 0, 1, 2, 2, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 2, 3, 2, 1, 0, 1, 1, 0, 1, 1, 0)
    end

    it "third test" do
      r = s.nearest_vowel("")
      expect(r).to contain_exactly()
    end

    it "fourth test" do
      r = s.nearest_vowel("I suppose that 4 test should be plenty. We even have punctuation!!")
      expect(r).to contain_exactly(0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 2, 1, 0, 1, 2, 3, 2, 1, 0, 1, 2, 3, 2, 1, 0, 0, 1, 2, 2, 1, 0, 1, 2, 1, 0, 1, 2, 3, 3, 2, 1, 0, 1, 0, 1, 0, 1, 2, 1, 0, 1, 0, 1, 1, 0, 1, 2, 1, 0, 0, 1, 0, 0, 1, 2, 3)
    end
  end
end
