class Lexicon
    attr_accessor :lexicon, :pair
    
    stuff = gets.chomp()
    words = stuff.split()    
    
    Pair = Struct.new(:token, :word)
    first_word = Pair.new("direction", "north")
    second_word = Pair.new("direction", "south")
    third_word = Pair.new("direction", "east")
    fourth_word = Pair.new("direction", "north")
    fifth_word = Pair.new("verb","go")
    sixth_word = Pair.new("verb","kill")
    seventh_word = Pair.new("verb","eat")
    eighth_word = Pair.new("noun","bear")
    ninth_word = Pair.new("noun","princess")
    tenth_word = Pair.new("stop","the")
    eleventh_word = Pair.new("stop","in")
    twelfth_word = Pair.new("stop","of")
    
    def scan(words)
        pairs = [first_word, second_word, third_word, fourth_word, fifth_word, sixth_word, seventh_word, eighth_word, ninth_word, tenth_word, eleventh_word, twelfth_word]
        words.map do |value|
            if value.match(:word)
                puts value
            else 
                pairs.push(Pair.new(:error,value.to_s))
                
            end
            
            begin 
                Integer(words)
            rescue ArgumentError
                nil
            end
            
    end
end
end