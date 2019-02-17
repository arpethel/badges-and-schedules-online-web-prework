# Write your code here.
def badge_maker(name)
  message = "Hello, my name is #{name}."
  return message
end

def batch_badge_creator(names_array)
  messages_array = []

  names_array.each do |name|
    messages_array << badge_maker(name)
  end
  return messages_array
end

def assign_rooms(list_of_speakers)
  assignments = []
  list_of_speakers.each_with_index do |speaker, room|
    message = "Hello, #{speaker}! You'll be assigned to room #{room + 1}!"
    assignments << message
  end
  return assignments
end

def printer(list)
  batch_badge_creator(list).each do |badge|
    puts badge
  end
  assign_rooms(list).each do |rm_assignment|
    puts rm_assignment
  end
end
