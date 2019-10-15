def nyc_pigeon_organizer(data)
  
    org_hash = {}
      data.each do |k, v|
      attribute = k
      v.each do |key, value|
        specific = key
        value.each do |name|
          if org_hash[name] == nil
            org_hash[name] = {}
          end
          if org_hash[name][attribute]
            org_hash[name][attribute] << specific.to_s
        else
          org_hash[name][attribute] = [specific.to_s]
        end
        end
      end
    end
    return org_hash
  end
