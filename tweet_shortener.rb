# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweets)
  new_tweet = []
  word_bank = dictionary.keys
  tweets.split(" ").each do |word|
    if word_bank.include?(word.downcase)
      new_tweet << dictionary[word]
    else 
      new_tweet << word
    end 
  end 
  
  return new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each { |tweet| puts word_substituter(tweet) }
end
  
  
  
  
  
  
  
  
  