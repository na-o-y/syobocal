require 'nokogiri'
require 'open-uri'

module Syobocal
  module DB
    module APIRequest

      @@api_uri = "http://cal.syoboi.jp/db.php"

      class << self
        def req(params)
          url = @@api_uri + "?" + params.join("&")
          Nokogiri.XML(open(url))
        end
      end

    end
  end
end