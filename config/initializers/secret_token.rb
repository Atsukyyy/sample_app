# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file=Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token=SecureRndom.hex(64)
    File.write(token_file, token)
  end
end

SampleApp::Application.config.secret_key_base = 'c5604bfa897496ae1d60a561d914f261d5324b8430adff8cb7cf5027022409d906e8a7b1138e8fa743850bba62dc58795f90915fa035b84e13f90123d700c209'
