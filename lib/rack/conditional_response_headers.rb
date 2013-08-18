require "rack/conditional_response_headers/version"

module Rack
  class ConditionalResponseHeaders
    def initialize(app)
      @app=app
    end

    def call(env)
      [200, {"Content-Type" => "text/html"}, self]
    end

    def each(&block)
      block.call("CONDITIONAL RESPONSE HEADERS")
    end
  end
end
