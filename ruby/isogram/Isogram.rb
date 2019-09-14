class Isogram
  def self.isogram?(input)
    result = "Expected true, '#{input}' is an isogram"
    li = input.downcase.gsub('-', '').gsub(' ', '').split('')
  
    li.each do |char|
      li.delete_at li.index(char)
      if li.include? char
        result = "Expected false, '#{input}' is not an isogram"
        return
      end
    end

    result
  end
end
