# PrisonParser

Parses save game files from the Prison Architect game.

## Installation

Add this line to your application's Gemfile:

    gem 'prison_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prison_parser

## Usage

    > require "prison_parser"
    > prison = PrisonParser.new(File.read("your_save_game.prison"))
    > prison["Rooms"] #=> Array of room hashes

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
