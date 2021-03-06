require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Marina
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.browserify_rails.commandline_options = "-v -d -t [ babelify --presets [ react es2015 stage-2 ] --plugins [ syntax-async-functions transform-regenerator ] --extensions .es6 ]"


    # React Server Side Rendering
	# Settings for the pool of renderers:
	config.react.server_renderer_pool_size  ||= 1  # ExecJS doesn't allow more than one on MRI
	config.react.server_renderer_timeout    ||= 20 # seconds
	config.react.server_renderer = React::ServerRendering::SprocketsRenderer
	config.react.server_renderer_options = {
  	files: ["react-server.js", "components.js"], # files to load for prerendering
  	replay_console: true,                 # if true, console.* will be replayed client-side
	}

  end
end
