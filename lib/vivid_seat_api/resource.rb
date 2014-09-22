module VividSeatApi
  class Resource < Base
    def list(options = {})
      get_query_api("getListings", options)
    end

    def update(options = {})
      post_query_api("updateListing", options)
    end

    def delete(options = {})
      get_query_api("deleteListing", options)
    end

    def create(options = {})
      post_query_api("insertListing", options)
    end

    def insert_or_update(options = {})
      post_query_api("insertOrUpdateListing", options)
    end
  end
end
