# Write your code here.

def badge_maker(name)
  badge = "Hello, my name is #{name}."
  badge
end

def batch_badge_creator(guests)
  guests.map {|badges| badge_maker(badges) }
end

def assign_rooms(speakers)
  rooms = []
  speakers.each do |name|
    room_num = (speakers.index(name) + 1).to_s
    rooms << "Hello, #{name}! You'll be assigned to room " + room_num + "!"
  end
  rooms
end

def printer(guests)
  batch_badge_creator(attendees).each {|badge_string| puts badge_string}
  assign_rooms(attendees).each {|room_string| puts room_string}
end
  