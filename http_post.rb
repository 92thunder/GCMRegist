require "net/http"
require "uri"

uri = URI.parse("http://localhost:3000/users/register")
Net::HTTP.start(uri.host, uri.port){|http|
  #ヘッダー部
  header = {
    "user-agent" => "Ruby/#{RUBY_VERSION} MyHttpClient"
 }
  #ボディ部
  body = "registration_id=APA91bGuUlHkxeVT5fcGp3OBUkCy8I2gXo-4SQTrwcnpD3FjCAoYNRrurVS54aFJCAqGYgWCA_gheTESrDj6Bhv6EwGigY3mY5UExUNBv2NM9RicRXBOVJCJFX0wJUd_jJTeBDTaj-MQFJ8Fts27_5BH8WI5na5hGQ"
  #送信
  response = http.post(uri.path, body, header)
}
