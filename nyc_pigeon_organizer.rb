def nyc_pigeon_organizer(data)
  # First make a new has with all pigeon names as key (string) and a dictionary as value.
  pigeon_list = Hash.new

  data[:gender][:male].each { |name|
    pigeon_list[name] = {:color => [], :gender => ["male"], :lives => []}
  }
  data[:gender][:female].each { |name|
    pigeon_list[name] = {:color => [], :gender => ["female"], :lives => []}
  }
  
 # Insert the color/lives dictionaries into each pigeon key.
  data[:color].collect { |color, names|
    names.each {  |name|
      pigeon_list[name][:color] << "#{color}"
    }
  }


  #check each pigeon data/lives and insert into pigeon[lives] by reversing the info
  data[:lives].collect { |location, names|
  names.each {  |name|
    pigeon_list[name][:lives] << "#{location}"
  }
}

  return pigeon_list
end