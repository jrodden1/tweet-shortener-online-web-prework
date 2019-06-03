def dictionary(word)
  output_word = ""
  case word
  when "hello"
    output_word = "hi"
    puts "#{word} was changed to #{output_word}."
  when "to"
    output_word = "2"
    puts "#{word} was changed to #{output_word}."
  when "two"
    output_word = "2"
    puts "#{word} was changed to #{output_word}."
  when "too"
    output_word = "2"
    puts "#{word} was changed to #{output_word}."
  when "for"
    output_word = "4"
    puts "#{word} was changed to #{output_word}."
  when "four"
    output_word = "4"
    puts "#{word} was changed to #{output_word}."
  when "be"
    output_word = "b"
    puts "#{word} was changed to #{output_word}."
  when "you"
    output_word = "u"
    puts "#{word} was changed to #{output_word}."
  when "at"
    output_word = "@"
    puts "#{word} was changed to #{output_word}."
  when "and"
    output_word = "&"
    puts "#{word} was changed to #{output_word}."
  else
    puts "#{word} was NOT changed.  It is not in the dictionary"
  end
  output_word
end

def word_substituter(tweet)
  tweetArr = tweet.split(" ")
  tweetArr.map do |word|
    #is the word in the dictionary?  I'm testing for the blank output of the #dictionary method which means the word is not in the dictionary and nothing can be done to it. 
    if dictionary(word) != ""
  end
end
