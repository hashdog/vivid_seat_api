#api exception
class ApiException < StandardError;end

module Faraday
  class Response::VividSeat < Response::Middleware
    def parse_body(body)
      Nokogiri::XML(body)
    end

    def check_status(env)
      status = env[:status].to_s
      if status =~ /^5/
        raise ApiException.new("Bad Token, status #{status}")
      elsif status =~ /^4/
        raise ApiException.new("Error #{status}")
      end
    end

    def call(environment)
      @app.call(environment).on_complete do |env|
        check_status(env)
        env[:body] = parse_body(env[:body])
      end
    end

  end
end
