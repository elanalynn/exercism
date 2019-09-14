class Matrix
  def initialize(values)
    @values = values
  end

  def rows
    rows = Array.new
    @values.split("\n").each do |row|
      int_row = row.split(' ').map { |v| v.to_i }
      rows << int_row
    end
    rows
  end

  def columns
    columns = Array.new
    rows[0].length.times { columns << Array.new }
    rows.each { |row| row.each_with_index { |item, i| columns[i] << item } }
    columns
  end
end
