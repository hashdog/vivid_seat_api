module VividSeatApi
  class Base
    def base_url
      "https://brokers.vividseats.com/webservices/listings/v1/"
    end

    def make_request_url url, options
      "#{url}?#{builder_options(options)}"
    end

    def builder_options options
      options.merge!(apiToken: @token)
      to_query(options)
    end

    def get_query_api url, options
      puts make_request_url(url, options)
      session.get(make_request_url(url, options)).body
    end

    def post_query_api url, options
      builder_options(options)
      session.post(url, builder_options(options)).body
    end

    def to_query(options)
      Faraday::Utils.build_nested_query(options)
    end

    def session
      @connection ||= ::Faraday.new base_url do |conn|
        conn.use Faraday::Response::VividSeat
        conn.adapter Faraday.default_adapter
      end
    end

  end
end
