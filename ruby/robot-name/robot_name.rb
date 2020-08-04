
class Robot
  attr_reader :name

  @@names = ('AA000'..'ZZ999').to_a.shuffle

  def initialize
    @name = @@names.shift
    @@names << name
  end

  def reset
    initialize
  end

  def self.forget
  end
end
