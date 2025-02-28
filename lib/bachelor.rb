def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  person = nil
  data.each do |season, contestants|
    contestants.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
 person
end

def count_contestants_by_hometown(data, hometown)
  person = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        person << season
      end
    end
  end
 person.length
end

def get_occupation(data, hometown)
   person = nil
   data.each do |season, contestants|
     contestants.find do |contestant|
       if contestant["hometown"] == hometown
         person = contestant["occupation"]
       end
     end
   end
  person
end

def get_average_age_for_season(data, season)
  contestant_ages = data[season].map do |contestant|
    contestant["age"].to_i
  end
  sum_of_ages = contestant_ages.reduce(0) do |sum, age|
    sum += age
  end
  contestant_count = contestant_ages.count.to_f
  (sum_of_ages/contestant_count).round
end
