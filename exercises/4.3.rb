## 4.3.2
# 1
(0..16).each { |i| puts 2**i }

# 2
def yeller(a)
  a.map! { |char| char.upcase }
  a.join
end
puts yeller(%w[h e y])

# 3
def random_subdomain()
  ('a'..'z').to_a.shuffle[0..7].join
end
print random_subdomain()
print "\n"

# 4
def shuffle_string(s)
  s.split('').shuffle.join
end
puts shuffle_string('jorgen')

## 4.3.3
#1
en_sp = {one: "uno", two: "dos", three: "tres"}
en_sp.each do |key, value|
  puts "#{key} in Spanish is #{value}"
end

#2
person1 = {first: "P1first", last: "P1last"}
person2 = {first: "P2first", last: "P2last"}
person3 = {first: "P3first", last: "P3last"}

params = {father: person1, mother: person2, child: person3}
puts params[:father][:first] == "P1first"

#3
easy = {name: "Name", email: "email@example.com", password_digest: "3jg8ksdfi2F1PPqC"}

#4
# >> { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
# >> { "a" => 100, "b" => 300 }
a = { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
puts a
