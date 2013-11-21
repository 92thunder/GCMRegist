require "net/http"
require "uri"

uri = URI.parse("http://localhost:3000/users/register")
Net::HTTP.start(uri.host, uri.port){|http|
  #ヘッダー部
  header = {
    "user-agent" => "Ruby/#{RUBY_VERSION} MyHttpClient"
  }
  #ボディ部
  body = "name=name&reg_id=1"
  #送信
  response = http.post(uri.path, body, header)
}