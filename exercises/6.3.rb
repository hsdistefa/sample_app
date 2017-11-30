# 6.3.4
# 1
user = User.find_by(email: "mhartl@example.com")

# 2
user.name = "hello"
user.save
# => password is too short

# 3
user.update_attribute(:name, "hello")
# update_attribute skips validation, update_attributes does not
