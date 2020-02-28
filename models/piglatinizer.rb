require 'pry'
class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    plwords = words.collect do |word|
      letters = word.split("")
      cons = []
      latinized = ""

      if word.length > 1
        until letters.first.match(/[aeiou]/i) || letters.empty?
          cons.push(letters.shift)
        end
      end

      if cons.length == 0
        latinized = word + "w"
      else
        latinized = letters.join() + cons.join()
      end

      latinized + "ay"
    end
    plwords.join(" ")
  end

end
