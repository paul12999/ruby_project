require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "UER9ElIDVtorSpN6z1NGsisnr"
  config.consumer_secret     = "zhjmPhZTRGxDTms6NVVqGpeES7yz1GbMa3EAG0wOTdkI9TetpH"
  config.access_token        = "1203210362-jHO4gSg2efLwBw27GnjXdhsAQQVaXyUrw7v9bgs"
  config.access_token_secret = "kgYZfTOeD0iRwibEeiQPJrogoNelOFoC8FXgeTs0g0oBd"
end

user="iingwen"
max=nil

while true
  options={count:300}
  options[:max_id]=max if max
  timeline=client.user_timeline(user,options)
  break if timeline.empty?
  timeline.each{|tweet|
    puts tweet.full_text
    #tweet.media.each{|media|
      #puts media.media_url.to_s
   # }
  }
  max=timeline.last.id-1
end
