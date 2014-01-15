require 'simplecov'
SimpleCov.start

require 'rspec'
require 'pry'

$:.unshift(Dir.pwd) unless $:.include?(Dir.pwd)
