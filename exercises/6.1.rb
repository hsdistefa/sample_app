# 6.1.3
# 1
user = User.new(name: "Michael", email: "email@example.com")
user.name.is_a?(String)
user.email.is_a?(String)

# 2
user.created_at.class  # => ActiveSupport::TimeWithZone
user.updated_at.class  # => ActiveSupport::TimeWithZone


# 6.1.4
# 1
User.find_by(name: "Michael")

# 2
User.all.class  # => User::ActiveRecord_Relation

# 3
User.all.length  # => 1


# 6.1.5
# 1
user.update_attribute(:name, "El Duderino")

# 2
user.update_attributes(email: "dude@abides.org")

# 3
user.created_at = 1.year.ago
