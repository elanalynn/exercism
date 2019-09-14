class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.sort.last
  end

  def personal_top_three
    @scores.length > 2 ? @scores.sort.slice(-3, 3).reverse : @scores.sort.reverse
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
