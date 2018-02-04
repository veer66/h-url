# h-url #

A light http client library for Ruby

````ruby
require "net/http"

def h_url(url, method="GET", headers={}, body="")
  uri = URI(url)
  Net::HTTP.start(uri.hostname, uri.port) do |client|
    client.send_request(method, url, body, headers)
  end
end
````

I intend it to be copied and pasted rather than using via gem.

## Usage example ##

````ruby
puts h_url("http://veer66.rocks/").body
````

````ruby
require "json"
puts h_url("http://localhost:3134/wordseg", "POST", {}, {"text" => "กาไก่ปลาปู"}.to_json).body
````
