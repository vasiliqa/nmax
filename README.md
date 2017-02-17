# Nmax

## Requirements

Create the nmax-script which does the following:
• reads from an incoming stream of text data;
• on completion of input it outputs n of the most large integers from given data.

Additional information:
• the number is any continious sequence of digits in the data;
• there are no numbers longer than 1000 digits in the data;
• n should be the only parameter of the script;
• the code should be covered with tests;
• the code should be made as a gem (with an executable file, code of modules, etc.);
• placing on Github and integration with Travis CI would be a plus.

The example of launching:
cat sample_data_40GB.txt | nmax 10000

## Installation

The gem tested against Ruby 1.9-2.4.0 and JRuby 1.7, 9.1.0.0.

Add this line to your application's Gemfile:

```ruby
gem 'nmax'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nmax

## Usage

    $ cat filename | nmax count

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/vasiliqa/nmax](https://github.com/vasiliqa/nmax).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

