# Write your code here.
def badge_maker(name)
  puts "Hello, my name is #{name}."
end 

def batch_badge_creator(names_array)
  messages_array = []

  names_array.each do |name|
    messages_array << badge_maker(name)
  end
  return messages_array
end