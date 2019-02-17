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
  list_all = []
  list_assigned_rooms = []
  list_badge = []

  batch_badge_creator(list).each do |badge|
    list_badge << badge
  end
  puts list_badge

  list_all << list_badge

  assign_rooms(list).each do |rm_assignment|
    list_assigned_rooms << rm_assignment
  end
  puts list_assigned_rooms

  list_all << list_assigned_rooms
  puts list_all
  return list_all
end
