require 'byebug'
require 'faker'
require 'httparty'
require 'json'
require 'rspec'
require 'yaml'

URL   ||= YAML.load_file("#{File.dirname(__FILE__)}/config/rotes.yml")
TOKEN ||= YAML.load_file("#{File.dirname(__FILE__)}/config/token.yml")