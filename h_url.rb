# coding: utf-8

require "net/http"

def h_url(url, method="GET", headers={}, body="")
  uri = URI(url)
  Net::HTTP.start(uri.hostname, uri.port) do |client|
    client.send_request(method, url, body, headers)
  end
end
