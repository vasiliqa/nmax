# Nmax

## Requirements

Create the nmax-script which does the following:
* reads from an incoming stream of text data;
* on completion of input it outputs n of the most large integers from given data.

Additional information:
* the number is any continious sequence of digits in the data;
* there are no numbers longer than 1000 digits in the data;
* n should be the only parameter of the script;
* the code should be covered with tests;
* the code should be made as a gem (with an executable file, code of modules, etc.);
* placing on Github and integration with Travis CI would be a plus.

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

## History

First version is good only for small files. On my system this process for a 500MB file was killed by the system because of exhausting all memory. Processing a 1GB file freezes the system.

```ruby
def self.max_integers(file, n)
  return if n <= 0

  data = file.read

  integers = data.scan(/\d{1,1000}/).map(&:to_i)
  integers.sort.reverse.first(n)
end
```
Benchmark results:

                                user     system      total         real
    first version 1MB        0.290000   0.000000   0.290000   (  0.286066)
    first version 10MB       2.630000   0.010000   2.640000   (  2.647087)
    first version 100MB     29.990000   0.900000  30.890000   ( 30.844920)

    nmax 1MB                 2.480000   0.000000   2.480000   (  2.476472)
    nmax 10MB               20.830000   0.010000  20.840000   ( 20.801373)
    nmax 100MB             208.560000   0.300000 208.860000   (208.533256)
    nmax 500MB            1017.700000   1.840000 1019.540000 (1017.933454)

## Usage

    $ cat filename | nmax count

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/vasiliqa/nmax](https://github.com/vasiliqa/nmax).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

