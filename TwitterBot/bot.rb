#!/usr/bin/env ruby
def secondly_loop
    last = Time.now
    while true
        yield
        now = Time.now
        _next = [last + 1,now].max
        sleep (_next-now)
        last = _next
    end
end

secondly_loop{

  require 'twitter'

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "Hz7GIn6c01xJ73O1FaHLGahbn"
    config.consumer_secret     = "BkcPgL5Qh0ndvnit23JXDSOZtU1ixCL6Wk6wuvC89IYe4Zy0Mk"
    config.access_token        = "24661632-vfPMnpLflVIsV8Vn3tnvqdY0QbGNYxEvHgJuR5nNc"
    config.access_token_secret = "z1uDThQntnCqC20PYdXVJSHmYEfE5lBgX25NIyexps5Ez"
  end

  client.update("...........")


}
