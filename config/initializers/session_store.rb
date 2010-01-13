# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Niveo_session',
  :secret      => '6abc69e82aef65dad76b80dc303764766f36058f3ea4d9d590a62835308bce71bfcc0024bbf797fb6f63382dd0d682a344f7e57f6b95f4bf921ff847d7ca4527'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
