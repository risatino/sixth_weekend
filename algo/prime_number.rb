# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

require 'rspec'

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Generator
  def is_prime?(number)
    if is_prime?(number) == true
      return true
    else
      return false
    end
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)
    all_numbers = []
    number.times do
      number = number - 1
      all_numbers << number
    end
    all_numbers.each do |one_number|
      if is_prime?(one_number)
        return one_number
        break
      end
    end
  end
end

RSpec.describe Generator do
  let(:generator) { Generator.new }

  describe '#is_prime?' do
    it 'should return true if number is prime' do
      expect(Generator.is_prime?(5)).to eq(true)
    end
  end

  describe '#highest_prime_number_under' do
    it 'should return the highest prime number under the number given' do
      expect(generator.highest_prime_number_under(10)).to eq(7)
    end
  end
  
end