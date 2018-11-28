# staging.rb, production.rb

# Log detail is configurable on the server
config.log_level = ENV['LOG_LEVEL'] ? ENV['LOG_LEVEL'].to_sym : ('info').to_sym

#staging.rb
config.consider_all_requests_local = ENV['CONSIDER_REQUESTS_LOCAL']