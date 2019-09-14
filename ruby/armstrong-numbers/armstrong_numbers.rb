class ArmstrongNumbers
  def self.include?(n)
    digits = n.to_s.split(//)
    l = digits.length
    sum = digits.reduce(0) { |sum, num| sum + num.to_i**l }
    sum == n
  end
end
