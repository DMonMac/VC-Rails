# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Initialize carrierwave uploader
require 'carrierwave/orm/activerecord'
