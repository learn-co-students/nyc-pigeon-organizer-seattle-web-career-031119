require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  result = Hash.new
   
  data.each do |attribute, categories|
    categories.each do |category, pigeons|
      pigeons.each do |name|
        if result.include?(name)
          if result[name].include?(attribute)
            result[name][attribute] << category.to_s
          else
            result[name][attribute] = [] << category.to_s
          end
        else
          result[name] = {}
          result[name][attribute] = [] << category.to_s
        end
      end
    end
  end
  result
end