# CssCompressor

A Ruby gem for compressing CSS files

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'css_compressor'
```

or install via Rubygems, directly:

```shell
$ gem install css_compressor
```

## Usage

You can use this gem from your code:

```ruby
require "css_compressor"

compressor = CssCompressor.new

# Pass a css file directly
compressor.compress("path/to/css_file.css")

# Pass the content of a css file instead
content = "
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  padding: 30px;
  word-wrap: break-word;"

compressor.compress_raw(content)
```

## License

[MIT]

[MIT]: https://github.com/rodrigoalvesvieira/css_compressor/blob/master/LICENSE.txt
