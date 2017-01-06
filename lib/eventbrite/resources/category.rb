module Eventbrite
  class Category < APIResource
    def self.url
      "/categories"
    end

    def self.detail(id, params={}, tokon=nil)
      response, token = Eventbrite.request(:get, url + "/" + id.to_s, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end

    def self.all(params={}, token=nil)
      response, token = Eventbrite.request(:get, url, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end
  end
end
