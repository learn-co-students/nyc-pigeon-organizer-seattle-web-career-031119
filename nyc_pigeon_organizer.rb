require 'pry'

def nyc_pigeon_organizer(data)
    pigeon_list = {}
    data.each do |k,v|
        v.each do |c,array|
            array.each do |name|
                pigeon_list[name] ||= {}
            end
        end
    end
    data.each do |k,v|
        v.each do |c,array|
        pigeon_list.keys.each do |name|
            if array.include?(name)
                pigeon_list[name][k] ||= []
                pigeon_list[name][k] << c.to_s
#                binding.pry
            end
        end
        end
    end
    pigeon_list
end
