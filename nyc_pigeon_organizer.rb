def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      # p all_names
      all_names.each do |name|
        # p name
        if new_pigeon_list[name] == nil
          new_pigeon_list[name] = {}
        end

        if new_pigeon_list[name][color_gender_lives] == nil
          new_pigeon_list[name][color_gender_lives] = []
        end

        new_pigeon_list[name][color_gender_lives].push(stats.to_s)

      end
    end
  end
  new_pigeon_list
end