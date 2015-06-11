
require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!

  #go through data and take all of the names out
  #create an array of all of the names and remove all duplicates.

  #create a hash with the Name as the key ""

hash = {}
names = []

#create the hash with BIRD NAMES as the keys THEIR VALUES are empty HASHES!
  data.each do |keys, value|
    value.each do |keys2, value2|
        value2.each do |name|
          #binding.pry
          names << name
        end
    end
  end
  names.uniq.each do |bird_name|
    hash[bird_name] = {}
  end

  #add color, gender, and lives as KEYS inside of each value hash
  hash.each do |key, value|
    hash[key][:color] = []
    hash[key][:gender] = []
    hash[key][:lives] = []

  end


#creates the entire structure of the hash with all KEYS
  data.each do |keys, values|
    #keys = color, gender, lives
    values.each do |key2, value2|
      value2.each do |val|
        #val = individual descriptor
        hash[val][keys] = []
      end
    end
  end
#puts the colors of each pigeon into their respective place
  data[:color].each do |key, value|
    #key is color
    #value is array of the NAMES of birds that color
    value.each do |name|
      hash[name][:color] << key.to_s
    end
  end



#get gender

  data[:gender].each do |key, value|
    #key is color
    #value is array of the NAMES of birds that color
    value.each do |name|
      hash[name][:gender] << key.to_s
    end
  end



#get lives

  data[:lives].each do |key, value|
    #key is color
    #value is array of the NAMES of birds that color
    value.each do |name|
      hash[name][:lives] << key.to_s
    end
  end



hash












end