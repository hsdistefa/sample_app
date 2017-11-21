## 4.4.1
#1
one_to_ten_literal = 1..10

#2
one_to_ten_new = Range.new(1, 10)

#3
puts one_to_ten_literal == one_to_ten_new

## 4.4.2
#1
#Range -> Object -> BasicObject
#Hash -> Object -> BasicObject
#Symbol -> Object -> BasicObject

#2
class Word < String
  def palindrome?
    self == reverse
  end
end

s = Word.new("level")
puts s.palindrome?

## 4.4.3
#1
s1 = Word.new("racecar")
s2 = Word.new("onomatopoeia")
s3 = Word.new("Malayalam")
puts s1.palindrome?
puts s2.palindrome?
puts s3.palindrome?

#2
class String
  def shuffle
    self.split('').shuffle.join
  end
end

puts "foobar".shuffle

#3
class String
  def shuffle
    split('').shuffle.join
  end
end

puts "foobar".shuffle

## 4.4.4
#2
# User -> ApplicationRecord(abstract) -> ActiveRecord::Base -> Object -> BasicObject

## 4.4.5
#1, 2
class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def alphabetical_name
    "#{@last_name}, #{@first_name}"
  end

  def formatted_email
    "#{full_name} <#{@email}>"
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

#3
example = User.new(first_name: "Michael", last_name: "Hartl",
                   email: "mhartl@example.com")
puts example.formatted_email
puts example.full_name.split == example.alphabetical_name.split(', ').reverse
