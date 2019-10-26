def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |k1, v1| #e.g. :color, {:purple => []}
    v1.each do |attribute, names| #e.g. :purple, ["Theo"..."Lucky"]
      names.each do |name|
      #if pigeon_list doesn't have the name as a key
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        #if pigeon_list[name] doesn't have k1 as a key
        if !pigeon_list[name][k1]
          pigeon_list[name][k1] = []
        end
        if names.include?(name)
          pigeon_list[name][k1] << attribute.to_s
        end
      end 
    end
  end
  pigeon_list
end







