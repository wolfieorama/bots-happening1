require 'telegram/bot'

token = 'API'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the weruby all day all night bot use /lang, /frameworks and /callrubyist to know more")
    when '/lang'
      bot.api.send_message(chat_id: message.chat.id, text: "Yes the language is ruby https://www.ruby-lang.org")
    when '/frameworks'
      bot.api.send_message(chat_id: message.chat.id, text: "my frameworks include Rails, Sinatra, Cuba etc..")
    when '/callrubyist'
      bot.api.send_contact(chat_id: message.chat.id, phone_number: "0722558899", first_name: "Yukihiro", last_name: "Matsumoto", user_id: 1)
    end
  end
end
