class Pangram

  LETTERS = ('a'..'z').to_a

  def self.pangram?(sentence)
    LETTERS.each do |letter|
      return false unless sentence.downcase.include? letter
    end
  end
end
