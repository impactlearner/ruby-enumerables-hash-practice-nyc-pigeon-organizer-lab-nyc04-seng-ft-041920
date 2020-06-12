require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, value), final_array|
    #binding.pry
    value.each do |inner_key, names|
    names.each do |name|
      #binding.pry
      if !final_array[name]
        final_array[name] = {}
      end
      if !final_array[name][key]
        !final_array[name][key] = []
      end
      final_array[name][key].push(inner_key)
    end
  end
end 
  binding.pry
end

#Reference: https://medium.com/launch-school/transforming-hashes-which-way-is-best-8f2122577984