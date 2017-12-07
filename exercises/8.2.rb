# 8.2.2
# 2

>> session = {}
>> session[:user_id] = nil
>> @current_user ||= User.find_by(id: session[:user_id])
>> @current_user == nil

>> session[:user_id]= User.first.id
>> @current_user ||= User.find_by(id: session[:user_id])
>> @current_user == User.first  # Database is queried to find matching user_id

>> @current_user ||= User.find_by(id: session[:user_id])
>> @current_user == User.first  # Database is NOT queried
