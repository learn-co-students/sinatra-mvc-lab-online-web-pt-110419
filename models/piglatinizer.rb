require 'rake'

class PigLatinizer

  attr_accessor :words

  def piglatinize(input)
    if input.include?(" ") == true
      new_array = []
      array = input.split(" ")
      array.each do |word|
        new_array << self.plword(word)
        end
        final_array = new_array.join(" ")
        final_array
    else
      self.plword(input)
    end
  end

  def plword(input)
    position = input.index(/[aeiouAEIOU]/)
    if position == 0
      new_word = input + "way"
    else
      new_word = input[position..] + input[0,position] + "ay"
    end
    new_word
  end

end
