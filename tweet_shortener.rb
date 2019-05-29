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
      new_tweet << dictionary[word.downcase]
    else 
      new_tweet << word
    end 
  end 
  
  return new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each { |tweet| puts word_substituter(tweet) }
end
  
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end 
  
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..137] + "..."
    
end
  
  
  
  
  