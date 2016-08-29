require 'uber'

client = Uber::Client.new do |config|
  config.server_token  = "48d5WXH80hyvrFz_JUAMKAGqsAH-xAeyPAtLvs3D"
  config.client_id     = "Tbom8rxm7rr2PbmkolnAFRA5qJGVFckK"
  config.client_secret = "7P6gZnwXDq76tXbYwxnc_K4kRHgrJvUkjcu6G5Oz"
end


client.price_estimations(start_latitude: -1.29206, start_longitude: 36.8219,
                         end_latitude: -1.2991, end_longitude: 36.762)
