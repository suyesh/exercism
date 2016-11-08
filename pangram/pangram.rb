class Pangram
  class << self
    def is_pangram?(str)
      return false if str.empty?
      symbols = %w(- / % , . " " '' + # @ ! ` ~ _ = *).inspect
      alphabets = ('a'..'z').to_a
      str_alphabets = str.chars.map {|char| char.downcase}.reject {|char| symbols.include?(char)|| char.empty?}
      difference = alphabets - str_alphabets || str_alphabets - alphabets
      return  difference.empty?
    end
  end
end

module BookKeeping
  VERSION = 2
end
