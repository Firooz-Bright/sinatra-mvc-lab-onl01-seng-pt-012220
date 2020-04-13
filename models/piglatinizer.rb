class PigLatinizer
  attr_accessor :piglatinized_phrase

def piglatinize(word) #pig latinizes a single word
   
   vowel = word.scan(/[aeoui]/)
   
   if word.split.first==vowel 
     word+ "way"
   else
     word.split.each do |letter|
       if letter != vowel
      back_end+=letter
    elsif letter==vowel
     new_word+= letter + back_end+"ay"
    end 
  end 
   new_word
 end 
     
end

def to_pig_latin(phrase)
  word_array = phrase.split(" ")
  @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
end
end #class end