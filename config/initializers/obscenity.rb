require 'obscenity/active_model'
Obscenity.configure do |config|
  config.blacklist   = 'config/blacklist.yml'
  config.replacement = :default
end