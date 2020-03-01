
class PigLatinizer

#attr_accessor :text
  def initialize
    #@text = text.downcase
  end
  def piglatinize(word)
      array = word.split(" ")
      new_array = array.map do |word|
        first_letter = word.split('').first.downcase #get first letter

        #if first letter is vowel, add "way"
        if first_letter.match(/a|e|i|o|u/)
          new_word = word+"way"
          #otherwise take first part and move to the end and add "ay"
        else
          parts = word.split(/([aeiou].*)/) #split word by first vowel
          new_word = parts[1].to_s+parts[0].to_s+"ay"
        end
        new_word
      end
      new_array.join(' ')

  end
end
