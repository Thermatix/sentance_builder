
module SBuilder

  Matches = {
    verb: "$verb",
    adjective: "$adjective",
    noun: "$noun"
  }

  Sentance = Struct.new("Sentance",:sentance, :words, :verbs, :adjectives, :nouns)
  class << self

    def fill_sentance sentance,words
      sentance.words.map do |word|
        case word
        when Matches[:verb]
          words[:verbs][rand(0...words[:verbs].length)]
        when Matches[:adjective]
          words[:adjectives][rand(0...words[:adjectives].length)]
        when Matches[:noun]
          words[:nouns][rand(0...words[:nouns].length)]
        else
          word
        end
      end.join(' ')
    end

    def generate_sentance input
      sentance = Sentance.new

      sentance.sentance = input
      sentance.words = sentance.sentance.split(Regexp.new(" |\n")) - ['']
      sentance.verbs = []
      sentance.adjectives = []
      sentance.nouns = []
      Matches.each_with_object(sentance.words) do |(match,matcher),words|
        words.each_with_index do |word,index|
          sentance.send("#{match}s") << index if matcher == word
        end
      end
      sentance
    end
  end


end
