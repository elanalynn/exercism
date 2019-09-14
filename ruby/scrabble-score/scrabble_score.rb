class Scrabble
  SCORE_KEY = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z) 
  }.freeze

  def self.score(word)
    Scrabble.new(word).score
  end

  def initialize(word)
    @word = word == nil ? [] : word.split('')
  end

  def score
    score = 0

    @word.each do |char|
      SCORE_KEY.each do |points, letters|
        if letters.include? char.upcase
          score = score + points
          break
        end
      end
    end

    score
  end
end
