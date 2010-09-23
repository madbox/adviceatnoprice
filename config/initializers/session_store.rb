# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_adviceatnoprice_session',
  :secret      => '1987c3077c2040334689e62d1fd79b1c6b012d64db0b3a5ac620217081a06940503ae1b7d4b63d5b1d27bbf8506df31c2bf72c03ecb60bcc66cff99e4ab44745'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
