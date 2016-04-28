require 'telegram/bot'

token = '207552567:AAGBttxNTsz0UbuErGr8xI59mwiDJ2oaBkA'

Telegram::Bot::Client.run(token) do |bot|
 bot.listen do |message|
  case message.text
  when '/sitepoint'
   bot.api.send_message(chat_id: message.chat.id, text: "welcometo http://sitepoint.com")
  end
 end
end

