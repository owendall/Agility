# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agility_session',
  :secret      => '23ff484296578c1c0a4b8d0fd557eca1e0fa2a554f9cd3c0d0b4dda8bb083dd733a6a0512a5327dd99825708777b4a52100714fd71da46c07ee50e792bbfc665'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
