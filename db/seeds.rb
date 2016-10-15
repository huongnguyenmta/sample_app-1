User.create!(name: "Example User", email: "example@railstutorial.org",
  password: "123qwe", password_confirmation: "123qwe", admin: true)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123qwe"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password)
end
