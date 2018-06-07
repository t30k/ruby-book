def user_exists?(user_id)
  # データーベースなどからユーザを探す（なければnil）
  user = find_user(user_id)
  # if user
  #   true
  # else
  #   false
  # end

  !!find_user(user_id)
end

def find_user(user_id)
  if user_id == 1
    true
  end
end

puts(user_exists?(1))
puts(user_exists?(2))