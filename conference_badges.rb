# Write your code here.

def badge_maker(name)
  return "Hello, my name is #{name}."
end 

def batch_badge_creator(attendees)
  attendees.collect {|attendee| badge_maker(attendee)}
end 

def assign_rooms(attendees)
  assignments = []
  attendees.each_with_index{|attendee, i| assignments << "Hello, #{attendee}! You'll be assigned to room #{i += 1}!"}
  return assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
  assign_rooms(attendees).each {|assignment| puts assignment}
end 