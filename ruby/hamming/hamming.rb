class Hamming
  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError
    end

    result = 0

    a.split('').each_with_index do |char, i|
      result = a[i] != b[i] ? result + 1 : result
    end

    result
  end
end
