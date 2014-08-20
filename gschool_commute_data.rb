require 'csv'

file = "/Users/Shelby/gSchoolWork/commute-warm-up/data/gschool_commute_data.csv"



csv = CSV.new("Person,Week,Day,Mode,Inbound,Outbound,Distance
Emily,4,Monday,Walk,12,15,0.65", :headers => true, :header_converters => :symbol, :converters => :all)



hash = csv.to_a.map {|row| row.to_hash}
p hash.to_hash