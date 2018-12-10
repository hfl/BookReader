require "bookreader/version"

module Bookreader
  class Error < StandardError; end
  module Rails
    require 'bookreader/engine'
  end
end
