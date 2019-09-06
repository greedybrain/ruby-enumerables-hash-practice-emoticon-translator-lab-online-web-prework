# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emo_file = YAML.load_file(file)
  conversion_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emo_file.each do |key, value|
    conversion_hash[:get_meaning][value[1]] = key
    conversion_hash[:get_emoticon][value[0]] = emo_file[key][1] #grab val from key meaning /japanese
  end
  conversion_hash
end

def get_japanese_emoticon(path, eng_emo)
  eng_emo = "---tg"
  emo_file = load_library(path)
  if eng_emo 
    emo_file[:get_emoticon][eng_emo]
  else
    "The Emoji doesn't exist"
  binding.pry
  end
end

# def get_english_meaning
#   # code goes here
# end