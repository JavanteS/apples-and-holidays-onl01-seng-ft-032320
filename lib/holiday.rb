require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter].each do |day, fun| fun << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring].each do |day, fun| fun << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season,holiday| 
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, decor|
       funday= day.to_s.split("_").map { |dey| dey.capitalize!
    }.join(" ") #{decor.join(", ")}"
    puts "  #{funday}: #{decor.join(", ")}"
    end
 end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, day| 
  day.map do | fun, decor|   if decor.include?("BBQ")
     fun
      end
    end
  end.flatten.compact
end







