class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    results = Hash.new

    @phrase.gsub(',', ' ').split(' ').each do |w|
      word = w.length == 1 ? w : /([\w]+[']*[\w]+)/.match(w.downcase).to_s
      results[word] = results[word] ? results[word] + 1 : 1
    end

    results
  end
end
