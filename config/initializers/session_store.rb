# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jockey_session',
  :secret      => '0efec7578f5b1ae06962c9a3bf307eecc5fed610e75be0f0fc23d66eb2931a23ccdfadc487fb19a1ce32afabb0f8bc37515be97b2d9ad19cc240c0e0f4b6794c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
