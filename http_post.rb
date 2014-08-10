require "net/http"
require "uri"

uri = URI.parse("http://localhost:3000/user/register")
Net::HTTP.start(uri.host, uri.port){|http|
  #ヘッダー部
  header = {
    "user-agent" => "Ruby/#{RUBY_VERSION} MyHttpClient"
 }
  #ボディ部
  body = "email=testttt@gmail.com&pw=abcdefghijk"
  #送信
  response = http.post(uri.path, body, header)
  puts response
}
