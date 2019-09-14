class Raindrops
  def self.convert(n)
    result = ''

    if n % 3 == 0
      result = "#{result}Pling"
    end

    if n % 5 == 0
      result = "#{result}Plang"
    end

    if n % 7 == 0
      result = "#{result}Plong"
    end

    result.empty? ? n.to_s : result
  end
end
