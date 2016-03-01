
module SBuilder

  Matches = {
    verb: "$verb",
    adjective: "$adjective",
    noun: "$noun"
  }

  Sentence = Struct.new("Sentence",:sentence, :words, :verbs, :adjectives, :nouns)
  class << self

    def fill_sentence sentence,words
      sentence.words.map do |word|
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

    def generate_sentence input
      sentence = Sentence.new

      sentence.sentence = input
      sentence.words = sentence.sentence.split(Regexp.new(" |\n")) - ['']
      sentence.verbs = []
      sentence.adjectives = []
      sentence.nouns = []
      Matches.each_with_object(sentence.words) do |(match,matcher),words|
        words.each_with_index do |word,index|
          sentence.send("#{match}s") << index if matcher == word
        end
      end
      sentence
    end
  end


end
