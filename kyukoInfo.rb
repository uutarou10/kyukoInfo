require "net/http"
require "uri"
require "json"

uri = URI.parse("http://konome.org/junk/95.php?mode=json")
json = Net::HTTP.get(uri)
result = JSON.parse(json)

count = 0;
for i in result do
  count += 1;
  puts "～#{count}件目～"
  puts "日付：#{i["date"]["string"]}"
  puts "講義名：#{i["title"]}"
  puts "担当教員名：#{i["teacher"]}"
  puts "備考：#{i["note"]}"
  puts ""
end

puts "\n現在の休講情報は以上です。"
