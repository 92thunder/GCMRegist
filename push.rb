require 'pushmeup'

# GoogleColudManagerのサーバー
gcm_host = "https://android.googleapis.com/gcm/send"

# サーバーにPOSTするフォーマット
gcm_format = :json

# APIのキー
api_key = "AIzaSyAHrWCgysmC35zWal3St3owd1rIDNZimCQ"

# デバイスID (tablet)
registration_id = "APA91bGuUlHkxeVT5fcGp3OBUkCy8I2gXo-4SQTrwcnpD3FjCAoYNRrurVS54aFJCAqGYgWCA_gheTESrDj6Bhv6EwGigY3mY5UExUNBv2NM9RicRXBOVJCJFX0wJUd_jJTeBDTaj-MQFJ8Fts27_5BH8WI5na5hGQ"
puts registration_id.length
# デバイスID (sumaho)

registration_id = "APA91bFRQk1YZB9HsqhkefDDHhHpyquaAJDEtuuv0U8_AZTaNDbdF53aDF_ovnpiZRjrSoi1uKvqnCTyOIMnD7F83BetBx2KVdU4TzAKfLaEjmB_c1HmEAEU9TzO8CuuAAM9tZwHLoz1u7T_MRbccp6DWAESjBF1fQ"


# 通知したいデバイスIDを配列で
destination = [registration_id]

data = { message: "aaa" }
# 各値をセットしてPush Notification
GCM.host = gcm_host
GCM.format = gcm_format
GCM.key = api_key
GCM.send_notification(destination, data)
