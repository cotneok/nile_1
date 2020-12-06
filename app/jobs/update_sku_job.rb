requre 'net/http'

class UpdateSkuJob < ApplicationJob
  queue_as :default

  def perform(*book_name)
    uri = URI('http://localhost:4576/update_sky')
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
    req.body = {sku: '123', name: book_name}
    res = Net::HTTP.start(uri.hostname, uri.port) do |http|
      http.request(req)
    end
  end
end
