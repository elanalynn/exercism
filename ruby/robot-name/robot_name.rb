class Robot
  @@names = Hash.new
  @name = nil

  CHARS = ('A'..'Z').to_a
  NUMS = 100..999

  def self.forget
    @@names = Hash.new
  end

  def initialize
  end

  def reset
    @name = nil
  end

  def name
    return @name if @name
    @name = new_name
  end

  private

  def new_name
    @name = generate_name
    while name_taken?
      @name = generate_name
    end

    log_name
    @name
  end

  def generate_name
    "#{generate_chars}#{generate_digits}"
  end

  def generate_chars
    CHARS.sample(2).join
  end

  def generate_digits
    rand NUMS
  end

  def name_taken?
    @@names.key? @name
  end

  def log_name
    @@names[@name] = true
  end
end
