require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "UER9ElIDVtorSpN6z1NGsisnr"
  config.consumer_secret     = "zhjmPhZTRGxDTms6NVVqGpeES7yz1GbMa3EAG0wOTdkI9TetpH"
  config.access_token        = "1203210362-jHO4gSg2efLwBw27GnjXdhsAQQVaXyUrw7v9bgs"
  config.access_token_secret = "kgYZfTOeD0iRwibEeiQPJrogoNelOFoC8FXgeTs0g0oBd"
end

tweets = client.user_timeline('iingwen', count:5)
tweets.each { |tweet| puts tweet.full_text }

