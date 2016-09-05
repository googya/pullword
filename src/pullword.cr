require "./pullword/*"
require "http/client"

module Pullword
  HOST = "api.pullword.com"

  def self.pullword(source="", threshold=0, debug=1)
    client = HTTP::Client.new(HOST)
    result = client.post("/post.php?source=$#{source}&param1=#{threshold}&param2=#{debug}")
    split_word(result.body, threshold)
  end

  def self.split_word(result, threshold)
    words = result.split()
    words_list = [] of String
    words.each do |word|
      next if word.size == 0
      final_word, possibility = word.split(":")
      if possibility.to_f >= threshold
        words_list << final_word
      end
    end
    words_list
  end
end
