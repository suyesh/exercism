class Raindrops
    class << self
      def convert(num)
        words = %W(
            #{'Pling' if num % 3 == 0}
            #{'Plang' if num % 5 == 0}
            #{'Plong' if num % 7 == 0}
        ).join
        words.empty? ? num.to_s : words
      end
    end
end

module BookKeeping
  VERSION = 3
end
