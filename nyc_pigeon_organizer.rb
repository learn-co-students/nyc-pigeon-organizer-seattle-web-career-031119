require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each do |trait|
    data[trait].each do |type, names|
      names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {trait => [type.to_s]}
          #binding.pry
        elsif pigeon_list[name].keys.include?(trait) == false
          pigeon_list[name][trait] = [type.to_s]
        else
          pigeon_list[name][trait].push(type.to_s)
        end
      end
    end
  end
  pigeon_list
end

puts nyc_pigeon_organizer(pigeon_data)