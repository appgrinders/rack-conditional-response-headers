# Rack::ConditionalResponseHeaders

Rack middleware: Sets response headers based on matching URL conditions

## Installation

Add this line to your application's Gemfile:

    gem 'rack-conditional_response_headers'

Or install it yourself as:

    $ gem install rack-conditional_response_headers

## Usage

    # Create a list of URL match conditions along with headers that should be applied
    conditions = [] 
    conditions.push	[/localhost/, {'Cache-Control'=>'no-cache'}]
    conditions.push	[/\.herokuapp\.com\/?.*/, {'X-Robots-Tag'=>'noindex, nofollow'}]
    conditions.push	[/.*/, {'X-Frame-Options'=>nil}] # Use nil to delete header
    use Rack::ConditionalResponseHeaders, conditions

### URL match examples:

- `/.*/` = Any URL
- `/\.herokuapp\.com\/?.*/` = Is 'herokuapp.com' domain
- `/\.pdf$|\.png$/` = Ends in '.pdf' or '.png'
- `/localhost/` = Contains 'localhost'
- `/^(?!.*localhost).*$ /` = Does not contain 'localhost'
