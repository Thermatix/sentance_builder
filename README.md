# SentenceBuilder

Using Sentence Builder is easy

First:

```ruby
require 'sentence_builder'
```

Create a sentence:

```ruby
sentence = SBuilder.generate_sentence("Hi, My $verb is $noun and I like $adjective $noun")
```

Some Words:

```ruby
words = {
  verbs: %w{shoulder donkey pingus},
  nouns: %w{trump Bingtown london berk},
  adjectives: %w{brown gold poopy stinky}
}

```

and then just fill the sentance:

```ruby
puts SBuilder.fill_sentence(sentence,words)
# => Hi, My donkey is trump and I like poopy trump
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sentence_builder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentence_builder

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sentence_builder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
