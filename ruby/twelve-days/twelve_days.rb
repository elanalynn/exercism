class TwelveDays
  def self.song
    ordinal_mapping = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth)
    number_mapping = %w(a two three four five six seven eight nine ten eleven twelve)
    gifts = ['Drummers Drumming', 'Pipers Piping', 'Lords-a-Leaping', 'Ladies Dancing', 'Maids-a-Milking', 'Swans-a-Swimming', 'Geese-a-Laying', 'Gold Rings', 'Calling Birds', 'French Hens', 'Turtle Doves', 'Partridge in a Pear Tree']

    gift_list = []
    song = ''

    (0..11).each do |day|
      gift_list << "#{number_mapping[day]} #{gifts.reverse[day]}#{day > 0 ? ',' : '.'}#{day == 1 ? ' and' : ''}"
      song << "On the #{ordinal_mapping[day]} day of Christmas my true love gave to me: #{gift_list.reverse.join(' ')}\n#{day < 11 ? "\n" : ''}"
    end
    song
  end
end
