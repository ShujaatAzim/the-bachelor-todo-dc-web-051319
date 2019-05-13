def get_first_name_of_season_winner(data, season)
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      contestant_info.each do |attribute, value|
      if [attribute][value] == "Winner"
        first_name = [attribute][:name]
        first_name.split(" ")
          return first_name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
