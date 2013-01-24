#!/usr/bin/env ruby
#
# sprockets.rb - Standalone sprockets asset pipeline
# Adapted from: http://www.simonecarletti.com/blog/2011/09/using-sprockets-without-a-railsrack-project/
#
# Written by Lorenzo Villani in 2013. Released as Public Domain.
#

require 'rubygems'
require 'bundler'

require 'fileutils'
require 'logger'
require 'pathname'

Bundler.require

# Configuration
ROOT        = Pathname(File.dirname(__FILE__)).expand_path()
BUNDLES     = %w( foundation/app.js )
BUILD_DIR   = ROOT.join("_site/asset/js").expand_path()
SOURCE_DIR  = ROOT.join("_js").expand_path()

# Initialize Sprockets
sprockets = Sprockets::Environment.new(ROOT) do |env|
    env.logger = Logger.new(STDOUT)
end

sprockets.append_path(SOURCE_DIR)

# Compile
BUNDLES.each do |bundle|
    asset = sprockets.find_asset(bundle)
    asset_path = asset.pathname.to_s()
    asset_dest = BUILD_DIR.join(asset_path[SOURCE_DIR.to_s().length() + 1..-1])

    asset.write_to(asset_dest)
end
