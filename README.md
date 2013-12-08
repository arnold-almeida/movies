# Movies

Gem to help tidy your movies collection. Looks up data from TheMovieDatabase and then
organises your collection based on a preferred format.

 eg. [Year] - [Director] - [Title]

 -

## Installation

Add this line to your application's Gemfile:

    gem 'movies'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install movies

## ToDo

    - create Local SQLLite DB for fast indexes
    - add .MovieMeta for files that have been processed
    - Anonymous stats

## Usage

    `movies scan <folder>`


    `movies scan <file>`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
