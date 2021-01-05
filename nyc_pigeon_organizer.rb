def nyc_pigeon_organizer(data)
  # First make a new has with all pigeon names as key (string) and a dictionary as value.
  pigeon_list = Hash.new

  data[:gender][:male].each { |name|
    pigeon_list[name] = {}
    pigeon_list[name][:gender] = ["male"]
    pigeon_list[name][:color] = []
  }
  data[:gender][:female].each { |name|
    pigeon_list[name] = {}
    pigeon_list[name][:gender] = ["female"]
    pigeon_list[name][:color] = []
  }
  
 # Insert the color/lives dictionaries into each pigeon key.
  data[:color][:purple].each { |name|
    pigeon_list[name][:color].push("purple")
  }
  data[:color][:grey].each { |name|
    pigeon_list[name][:color].push("grey")
  }
  data[:color][:white].each { |name|
    pigeon_list[name][:color].push("white")
  }
  data[:color][:brown].each { |name|
    pigeon_list[name][:color].push("brown")
  }


  #check each pigeon data/lives and insert into pigeon[lives] by reversing the info
  data[:lives]["Subway"].each { |name|
    pigeon_list[name][:lives] = "Subway"  }
  data[:lives]["Central Park"].each { |name|
    pigeon_list[name][:lives] = "Central Park" }
  data[:lives]["Library"].each { |name|
    pigeon_list[name][:lives] = "Library" }
  data[:lives]["City Hall"].each { |name|
    pigeon_list[name][:lives] = "City Hall" }


  return pigeon_list
end