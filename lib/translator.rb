  require "yaml"
  require 'pry'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 translator = {}
 emoticons.each do |mood, value_array|
 translator[mood] = {:english => value_array[0], :japanese => value_array[1]}
 end
 translator
end

def get_japanese_emoticon(file_path, english_emoji)
  translator = load_library(file_path)
  translator["mood"][:english].find do |x| x == english_emoji end
  binding.pry
end

def get_english_meaning
  # code goes here
end
