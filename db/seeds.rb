User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",
    admin: true,
    activated: true,
    activated_at: Time.zone.now)

30.times do |n|
name  = "a#{n+1}taro"
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = "aaaaa"
  users.each { |user| user.microposts.create!(content: content) }
end
