# h-url #

A light http client library for Ruby

````
require "net/http"

def h_url(url, method="GET", headers={}, body="")
  uri = URI(url)
  Net::HTTP.start(uri.hostname, uri.port) do |client|
    client.send_request(method, url, body, headers)
  end
end
````

## Usage example ##

````
puts h_url("http://veer66.rocks/").body
````

````
require "json"
puts h_url("http://localhost:3134/wordseg", "POST", {}, {"text" => "กาไก่ปลาปู"}.to_json).body
````
