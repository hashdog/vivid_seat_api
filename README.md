# VividSeatApi [![Code Climate](https://codeclimate.com/github/hashdog/vivid_seat_api/badges/gpa.svg)](https://codeclimate.com/github/hashdog/vivid_seat_api) [![Gem Version](https://badge.fury.io/rb/vivid_seat_api.svg)](http://badge.fury.io/rb/vivid_seat_api)

This gem provides access to add, edit and delete listings appearing on Vivid Seats and it’s affiliates.

## Installation

Add this line to your application's Gemfile:

    gem 'vivid_seat_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vivid_seat_api

## Usage

    client = VividSeatApi::Client.new("your-api-key")

    client.list(options)

    client.create(options)

    client.update(options)

    client.delete(options)

    client.insert_or_update(options)

note: options params you can check here: https://brokers.vividseats.com/ListingWebServices_v1.pdf

## Contributing

1. Fork it ( https://github.com/hashdog/vivid_seat_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
