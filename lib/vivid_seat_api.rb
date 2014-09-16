#gems
require 'faraday'
require 'nokogiri'

#libs
require_relative "vivid_seat_api/version"
require_relative "vivid_seat_api/response"
require_relative "vivid_seat_api/base"
require_relative "vivid_seat_api/resource"
require_relative "vivid_seat_api/client"

module VividSeatApi;end

client = VividSeatApi::Client.new("b6a56d39-abc2-4d9c-aa22-06e5632c2ef8")


puts client.create()

