ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

begin
	require 'dotenv'
	Dotenv.load
rescue LoadError
end