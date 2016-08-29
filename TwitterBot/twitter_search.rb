# !/usr/bin/env ruby

  require 'twitter'

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "Hz7GIn6c01xJ73O1FaHLGahbn"
    config.consumer_secret     = "BkcPgL5Qh0ndvnit23JXDSOZtU1ixCL6Wk6wuvC89IYe4Zy0Mk"
    config.access_token        = "24661632-vfPMnpLflVIsV8Vn3tnvqdY0QbGNYxEvHgJuR5nNc"
    config.access_token_secret = "z1uDThQntnCqC20PYdXVJSHmYEfE5lBgX25NIyexps5Ez"
  end

  # a = client.search("kenyanpundit")
  # puts(a)

  client.search("from:kenyanpundit #SundayReads").collect do |tweet|
    puts("#{tweet.user.screen_name}: #{tweet.text}")
  end
  # client.user_timeline("kenyanpundit").collect do |tweet|
  #   puts("#{tweet.user.screen_name}: #{tweet.text}")
  # end
