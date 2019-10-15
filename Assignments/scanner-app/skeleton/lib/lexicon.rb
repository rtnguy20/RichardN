class Lexicon
    attr_accessor :lexicon, :pair
    
    Pair = Struct.new(:token, :word)
    stuff = gets.chomp()
    words = stuff.split() 
    
    def scan(userwords)
        sentence = []
        userwords.each { |word|
        if word.include?("north","south", "east", "west")
            sentence.push(Pair.new(:direction, word))
        elsif word.include?("go", "stop","kill", "eat")
            sentence.push(Pair.new(:verb, word))
        elsif word.include?("door", "bear", "princess", "cabinet")
            sentence.push(Pair.new(:noun,word))
        elsif word.include?("the", "in", "of", "from", "at", "it")
            sentence.push(Pair.new(:stop, word))
        elsif word.include?("0","1","2","3","4","5","6","7","8","9")
            return :convert_numbers
        else
            sentence.push(Pair.new(:error,word))
        end
        }
    end
    
    def convert_number(s)
        begin
            Integer(s)
        rescue ArgumentError
            nil
        end
    end
end