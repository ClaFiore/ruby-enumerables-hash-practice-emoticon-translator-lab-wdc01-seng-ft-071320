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

  if load_library(file_path)[mood][:japanese] == emoticon
    return load_library(file_path)[mood][:english]
  else
    puts "Sorry, that emoticon was not found"
  end

end
