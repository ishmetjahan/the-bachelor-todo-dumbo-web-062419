def get_first_name_of_season_winner(data, season)
  data[season].each do |name|
        name.each do |data, type|
        if type == "Winner"
          return ele["name"].split(" ").first 
        end
      end
      return "No Winner"
    end
  end


def get_contestant_name(data, occupation)
  data.each do |season, arr|
    arr.each do |ele|
      ele.each do |data, type|
      if type == occupation
        return ele["name"]
      end
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
count=0 
data.each do |season,arr|
  arr.each do |ele|
    ele.each do |data, type|
    if type == hometown
      count +=1 
    end
  end
end
end
return count 
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |ele|
      ele.each do |data,type|
        if type == hometown 
        return ele["occupation"]
      end
    end
  end
end
end

def get_average_age_for_season(data, season)
  age=0 
  count=0 
  data[season].each do |ele|
    ele.each do |data,type|
      if data== "age"
        count +=1 
        age += type.to_f
        #str to float
      end
    end
  end
  ans= (age/count).round
  return ans 
end
