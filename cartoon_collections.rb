def roll_call_dwarves array
  # Your code here
  resp = []
  array.map.with_index(1) do |item, index|
   resp << "#{index}. #{item}"
  end
  puts resp
end

# roll_call_dwarves (%w[Dopey Grumpy Bashful])
def summon_captain_planet array
  # Your code here
  resp = []
  array.map do |item|
    item = item.capitalize() + "!"
    resp << item
  end
  resp
end
# puts summon_captain_planet (%w[earth wind fire water heart])

def long_planeteer_calls array
  # Your code here
  array.any? {|item| item.length > 4}
end


def find_the_cheese array
  # the array below is here to help
  resp = []
  cheese_types = ["cheddar", "gouda", "camembert"]
  cheese_types.map do |cheese|
     resp = array.include?(cheese)
     if resp == true
      return cheese
     else
      return nil
     end
  end
end

puts find_the_cheese(%w[ham cellphone computer])
