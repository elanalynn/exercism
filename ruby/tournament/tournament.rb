class Tournament
  def self.tally(input)
    r = Hash.new
    input.split("\n").each do |line|
      v = line.split(';')
      outcome = v[2]
      team1 = v[0]
      team2 = v[1]

      if (outcome == 'win') 
        Tournament.increment(team1, 1, r)
        Tournament.increment(team2, 3, r)
      elsif (outcome == 'loss')
        Tournament.increment(team1, 3, r)
        Tournament.increment(team2, 1, r)
      else
        Tournament.increment(team1, 2, r)
        Tournament.increment(team2, 2, r)
      end
    end

    block = ''
    sorted = r.sort.sort_by { |k, v| -v[4] }.to_h
    sorted.each do |line|
      block << "\n#{line[0].to_s.ljust(31)}|  #{line[1].join(' |  ')}"
    end

    <<~TALLY
    Team                           | MP |  W |  D |  L |  P#{block}
    TALLY
  end

  private
  
  def self.increment(team, col, results)
    tallies = Array.new(5, 0)
    if results.include? team
      tallies = results[team]
      tallies[col] = tallies[col] + 1
      tallies[0] =  tallies[0] + 1 
    else
      tallies[col] = tallies[col] + 1
      tallies[0] = 1
    end
    results[team] = calculate_score(tallies)
  end

  def self.calculate_score(tallies)
    wins = tallies[1]
    draws = tallies[2]
    tallies[4] = wins * 3 + draws
    tallies
  end
end

