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
    conversion_hash[:get_emoticon][value[0]] = emo_file[key][1] #grab val of meaning
    binding.pry
  end
  conversion_hash
end

def get_japanese_emoticon(path, eng_emo)
  load_library(path)
end

# def get_english_meaning
#   # code goes here
# end