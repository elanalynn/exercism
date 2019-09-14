class Complement
  def self.of_dna(dna)
    result = ''
    dna_to_rna = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A'=> 'U' }
    dna.chars.each { |key| result << dna_to_rna[key] }
    result
  end
end
