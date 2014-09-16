module VividSeatApi
  class Client < Resource
    def initialize(token)
      @token = token
    end
  end
end
