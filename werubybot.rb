require 'telegram/bot'

token = 'your token'

Telegram::Bot::Client.run(token) do |bot|
 bot.listen do |message|
  case message.text
  when '/sitepoint'
   bot.api.send_message(chat_id: message.chat.id, text: "welcometo http://sitepoint.com")
  end
 end
end
