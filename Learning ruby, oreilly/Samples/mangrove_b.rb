#!/usr/bin/env ruby

require 'rubygems'
require_gem 'builder'
include Builder

document = XmlMarkup.new(:target => $stdout, :indent => 1)

document.instruct!

document.comment! "our good friend Mondo"

document.name( :lang => "en" ) {
document.given "Mondo", :nickname => "false"
document.family "Mangrove"
}
