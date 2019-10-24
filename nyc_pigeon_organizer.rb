def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |key, val|
    #key1.each_key do |key2|
      pigeon_list = data[key]
    end
  end

  return pigeon_list
end
