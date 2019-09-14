class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/(?<![a-zA-Z])[a-zA-Z]/).join.upcase
  end
end
