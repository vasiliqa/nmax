# Nmax
Напишите скрипт nmax, который делает следующее:
• читает из входящего потока текстовые данные;
• по завершении ввода выводит n самых больших целых чисел, встретившихся в полученных текстовых данных.

Дополнительные указания:
• числом считается любая непрерывная последовательность цифр в тексте;
• известно, что чисел длиннее 1000 цифр во входных данных нет;
• число n должно быть единственным параметром скрипта;
• код должен быть покрыт тестами;
• код должен быть оформлен в виде гема (содержащего исполняемый файл, код модулей и т.д.);
• плюсом является размещение на Github и интеграция с Travis CI.

Пример запуска:
cat sample_data_40GB.txt | nmax 10000

## Installation

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

