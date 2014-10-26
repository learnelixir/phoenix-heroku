use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, PhoenixHeroku.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "3f0JoEl+Ijbte28aV0WzusJg/RxkAiytWTYmXQid38P1FM0/JmgH2OFcevP6ztGTmYPjEt2oGMP8qHkLMwyE7w=="

config :logger, :console,
  level: :all
