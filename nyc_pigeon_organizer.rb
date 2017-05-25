def nyc_pigeon_organizer(data)
  pigeon_list = {}
  attributes_array = data.keys
  data.each do |key, value|
    names_array = value.values.flatten(1).uniq
    names_array.each do |element|
      pigeon_list[element] = {}
    end
  end
  
  pigeon_list.each do |name, hash|
    attributes_array.each do |attribute|
      hash[attribute] = []
    end
  end

  data.each do |key, value|
    data[key].each do |k, v|
      pigeon_list.each do |name, hash|
        if data[key][k].include?(name)
          pigeon_list[name][key] << k.to_s
        end
      end
    end
  end
  pigeon_list
end
