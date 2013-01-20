# StringIrc [![Build Status](https://travis-ci.org/SpringMT/string_irc.png)](https://travis-ci.org/SpringMT/string_irc)

## Installation

Add this line to your application's Gemfile:

    gem 'string_irc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_irc

## Usage

~~~
str = StringIrc.new('hello').red(:white).bold.italics.result

Use str for IRC message
~~~

## Reference
* [String::IRC (perl)](http://search.cpan.org/~hirose/String-IRC-0.04/lib/String/IRC.pm)
* [IRCで色をつける方法](http://d.hatena.ne.jp/nishiohirokazu/20080225/1203919287)
* [IRCのメッセージ装飾](http://d.hatena.ne.jp/hirose31/20060824/1156400991)
* [mIRC Colors](http://www.mirc.co.uk/colors.html)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

