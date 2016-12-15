class PigLatinizer 


  def piglatinize(string)
    result = []
    string.split(" ").each do |word|
       if word[0].scan(/[aeiouAEIOU]/).count == 1
        result << word + "way"

      elsif word[0..2].scan(/[aeiouAEIOU]/).count == 0
        first_three = word.slice(0..2)
        result << word.slice(3..word.length) + first_three + "ay"
          
      elsif word[0..1].scan(/[aeiouAEIOU]/).count == 0
        first_two = word.slice(0..1)
        result << word.slice(2..word.length) + first_two + "ay"
      
      else
        first = word.slice(0)
        result << word.slice(1..word.length) + first + "ay"
      end
    end
      result.join
  end

   def to_pig_latin(string)
    result = []
    string.split(" ").each do |word|
       if word[0].scan(/[aeiouAEIOU]/).count == 1
        result << word + "way"

      elsif word[0..2].scan(/[aeiouAEIOU]/).count == 0
        first_three = word.slice(0..2)
        result << word.slice(3..word.length) + first_three + "ay"
          
      elsif word[0..1].scan(/[aeiouAEIOU]/).count == 0
        first_two = word.slice(0..1)
        result << word.slice(2..word.length) + first_two + "ay"
      
      else
        first = word.slice(0)
        result << word.slice(1..word.length) + first + "ay"
      end
    end
      result.join(" ")
  end


end