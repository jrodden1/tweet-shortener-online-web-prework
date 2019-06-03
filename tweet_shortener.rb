def dictionary(word)
  output_word = ""
  case word
  when "hello"
    output_word = "hi"
  when "Hello"
    output_word = "Hi"
    #puts "#{word} was changed to #{output_word}."
  when "to"
    output_word = "2"
    #puts "#{word} was changed to #{output_word}."
  when "two"
    output_word = "2"
    #puts "#{word} was changed to #{output_word}."
  when "too"
    output_word = "2"
    #puts "#{word} was changed to #{output_word}."
  when "for"
    output_word = "4"
  when "For"
    output_word = "4"
    #puts "#{word} was changed to #{output_word}."
  when "four"
    output_word = "4"
  when "Four"
    output_word = "4"
    #puts "#{word} was changed to #{output_word}."
  when "be"
    output_word = "b"
  when "Be"
    output_word = "B"
    #puts "#{word} was changed to #{output_word}."
  when "you"
    output_word = "u"
  when "You"
    output_word = "u"
    #puts "#{word} was changed to #{output_word}."
  when "at"
    output_word = "@"
  when "At"
    output_word = "@"
    #puts "#{word} was changed to #{output_word}."
  when "and"
    output_word = "&"
    #puts "#{word} was changed to #{output_word}."
  else
    #puts "#{word} was NOT changed.  It is not in the dictionary"
  end
  output_word
end

def word_substituter(tweet)
  finishedTweet = ""
  #I want to split the string into an array using spaces, single quotes, and commas
  #used this as a reference https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
  tweetArr = tweet.split
  tweetArr.map.with_index do |word, index|
    #is the word in the dictionary?  I'm testing for the blank output of the #dictionary method which means the word is not in the dictionary and nothing can be done to it.
    if dictionary(word) != ""
      shortenedWord = dictionary(word)
      tweetArr[index] = shortenedWord
    end
  end
  finishedTweet = tweetArr.join(" ")
  finishedTweet
end

def bulk_tweet_shortener(mulitiTweetArray)
  mulitiTweetArray.each do |tweet|
    puts word_substituter(tweet)
  end
end
