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

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
  library.find do |x| x == english_emoji end
  binding.pry
end
