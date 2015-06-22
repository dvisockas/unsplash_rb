require "oauth2"
require "httparty"

require "unsplash/version"
require "unsplash/configuration"
require "unsplash/errors"
require "unsplash/model"
require "unsplash/connection"
require "unsplash/user"
require "unsplash/photo"
require "unsplash/category"

module Unsplash
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
