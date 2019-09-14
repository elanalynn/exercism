class ResistorColorDuo
  COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'].freeze

  def self.value(colorList)
    COLORS.index(colorList[0]) * 10 + (COLORS.index(colorList[1]))
  end
end
