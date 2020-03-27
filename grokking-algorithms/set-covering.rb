require 'set'

states_needed = Set["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]

stations = {}
stations["kone"] = Set["id", "nv", "ut"]
stations["ktwo"] = Set["wa", "id", "mt"]
stations["kthree"] = Set["or", "nv", "ca"]
stations["kfour"] = Set["nv", "ut"]
stations["kfive"] = Set["ca", "az"]

final_stations = Set[]

while !states_needed.empty?
  best_station = nil
  states_covered = Set[]
  stations.each { |station, states|
    covered = states_needed & states
    if covered.length > states_covered.length
      best_station = station
      states_covered = covered
    end
  }
  states_needed -= states_covered
  final_stations.add(best_station)
end

puts final_stations

