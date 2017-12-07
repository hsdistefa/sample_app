# 8.1.1
# 1
# GET login_path gets a new page for a session, POST login_path creates a new
# session

# 2
# $ rails routes | grep users | wc -l
# $ 11
# $ rails routes | grep sessions | wc -l
# $ 4


# 8.1.2
# 1
# Login form submissions are routed to the Session controller's create action,
# rails knows to do this because a form uses HTML POST, and the routes.rb file
# defines a post on /login to be directed to the Session controller's create
# action.
