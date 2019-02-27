def nyc_pigeon_organizer(data)
  hash = {}
  data.each {|key, value|
    key1 = key
    
    value.each {|key, value|
      key2 = key
      
      value.each {|element|
        if !hash.has_key?(element)
          hash[element] = {}
        end
        if !hash[element].has_key?(key1)
          hash[element][key1] = []
          hash[element][key1] << "#{key2}"
        else
          hash[element][key1] << "#{key2}"
        end
      }
    }
  }
  hash
end