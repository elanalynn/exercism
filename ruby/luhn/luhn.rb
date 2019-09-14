class Luhn
  def self.valid? input
    no_spaces = input.gsub(' ', '')
    return false unless !(/\D/.match(no_spaces))
    @num = no_spaces.split('').reverse
    return false unless @num.length > 1

    @num.each_with_index do |d, i|
      if i % 2 > 0
        double = d.to_i * 2
        @num[i] = double > 9 ? double - 9 : double
      end
    end

    sum = @num.reduce(0) { |sum, d| sum + d.to_i }

    sum % 10 == 0
  end
end
