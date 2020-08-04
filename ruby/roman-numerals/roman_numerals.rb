TO_ROMAN_KEY = {
  1000 => "M",  
  900  => "CM",  
  500  => "D",  
  400  => "CD",
  100  => "C",  
  90   => "XC",  
  50   => "L",  
  40   => "XL",  
  10   => "X",  
  9    => "IX",  
  5    => "V",  
  4    => "IV",  
  1    => "I"  
}

class Integer
  def to_roman
    n = self
    TO_ROMAN_KEY.each_with_object('') do |(k, v), result|
      result << v * (n / k)
      n = n % k
    end
  end
end
