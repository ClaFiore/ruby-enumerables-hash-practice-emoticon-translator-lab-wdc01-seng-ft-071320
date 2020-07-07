  require "yaml"
  require 'pry'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 translator = {}

 emoticons.each do |mood, value_array|
 translator[mood] = {:english => value_array[0], :japanese => value_array[1]}
 end
 translator
#binding.pry
end

def get_japanese_emoticon(file_path, emoji)
  library = load_library(file_path)

  # code goes here
end

def get_english_meaning
  # code goes here
end
