# require modules here
require 'pry'
require 'yaml'

def load_library(emoticon)
  emotes = YAML.load_file(emoticon)
  emotes_hash = Hash.new
  emotes_hash["get_emoticon"] = Hash.new
  emotes_hash["get_meaning"] = Hash.new
  emotes.each do |english, emo|
    emotes_hash["get_emoticon"][emo.first] = emo.last
    emotes_hash["get_meaning"][emo.last] = english
  end
  emotes_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end