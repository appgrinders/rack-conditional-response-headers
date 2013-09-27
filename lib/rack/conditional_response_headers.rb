
module Rack
  
  class ConditionalResponseHeaders
    
    def initialize(app, conditions=[])
      @app=app
      @conditions = conditions
    end

    def call(env)
      @status, @headers, @response = @app.call(env)
      @request = Rack::Request.new(env)
      [@status, _apply_headers, @response]
    end

    private

      def _apply_headers
        url =  @request.url
        @conditions.each do |item|
          condition = item[0] 
          if condition =~ @request.url
            headers = item[1]
            headers.each do |key, value|
              if value.nil?
                @headers.delete(key)
              else
                @headers[key] = value
              end
            end
          end
        end
        @headers
      end
    
  end
  
end
