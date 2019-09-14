class Series
  def initialize(input)
    @set = input.chars
  end

  def slices(length)
    if length > @set.length
      raise ArgumentError.new
    end

    result = Array.new
    @set.each_cons(length) { |arr| result << arr.join }
    result
  end
end
