# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!

require 'rspec'

class Thesaurus
  def initialize(input)
    @words = []
    @words << input [:word]
    @synonyms = []
    @synonyms << input[:synonym]
    @antonyms = []
    @antonyms << input[:antonym]
  end

  def search_synonym(word)    
  # I keep muddling this section with all sorts of stuff >.< help
    @synonyms = []
    @synonyms << input[:synonym]
  end

  def search_antonym(word)
    # I am stuck and pretty much lost.
    @antonyms = []
    @antonyms << input[:antonym]
  end
end

class Entry < Thesaurus
  def add_new_word(word)
    @words << word
    return @words
  end

  def delete_word(word)
    @words.delete(word)
    return @words
  end
end

RSpec.describe Thesaurus do
  describe '#add_new_word' do
    it 'should return a word if given a word' do
      thesaurus = Entry.new(word: "sleepy", synonym: "tired")
      expect(thesaurus.add_new_word("pingpong")).to eq(["sleepy", "pingpong"])
    end
  end
  describe '#delete_word' do
    it 'should delete the word given' do
      thesaurus = Entry.new(word: "sleepy")
      thesaurus.add_new_word("pingpong")
      thesaurus.add_new_word("lazy")
      expect(thesaurus.delete_word("lazy")).to eq(["sleepy", "pingpong"])
    end
  end
  describe '#search_synonym' do
    it 'should search the synonym for word' do
      thesaurus = Entry.new(word: "sleepy", synonym: "tired")
      thesaurus.add_new_word("pingpong")
      expect(thesaurus.search_synonym("sleepy")).to eq("tired")
    end
  end
  describe '#search_antonym' do
    it 'should search the antonym for word' do
      thesaurus = Entry.new(word: "sleepy", synonym: "tired", antonym: "awake")
      expect(thesaurus.search_antonym("sleepy")).to eq("awake")
    end
  end
end