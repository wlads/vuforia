require_relative "vuforia/version"
require "httparty"

# sample use:
# cli = Vuforia::WS.new(server_key, secret_key)
# cli.database_sumary
# cli.targets
# ...

module Vuforia
  class WS
    include HTTParty
    base_uri "https://vws.vuforia.com"

    def initialize(access_key = nil, secret_key = nil)
      @access_key = access_key || ENV['VWS_ACCESS_KEY']
      @secret_key = secret_key || ENV['VWS_SECRET_KEY']
    end

    def database_summary
      self.class.get("/summary")
    end

  end
end
