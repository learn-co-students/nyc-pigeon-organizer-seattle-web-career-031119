require "pry"

def nyc_pigeon_organizer(data)

  new_hash = collect_names(data)

  data.each do |field, data_hash|
    data_hash.each do |field_value, names_list|
      names_list.each do |name|
        new_hash[name][field] << field_value.to_s



      end
    end
  end
  new_hash

end

def collect_names(data)
  new_hash = {}
  #create new hash with key of each name, and value of another hash with properties
  data[:color].map do |color, names_list|
    names_list.each do |name|
      if !new_hash.has_key?(name)
        new_hash[name] ={color: [], gender: [], lives: []}
      end
    end
  end
  new_hash
end
