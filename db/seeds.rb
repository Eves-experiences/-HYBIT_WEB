# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "cleaning DB..."
Habit.destroy_all
puts "Habits deleted"
Friendship.destroy_all
puts "Existing Friendships deleted"
User.destroy_all
puts "Users deleted"

admin = User.create(
  email: "hybit.yeka@hybit.com",
  password: "adminadmin",
  first_name: "Asia",
  last_name: "the Hybit Admin",
  nickname: "Hibbitybibbety",
  time_zone: "Ekaterinburg",
  admin: true
)
admin.save

adminamsterdam = User.create(
  email: "hybit.ams@hybit.com",
  password: "adminadmin",
  first_name: "Europe",
  last_name: "the Hybit Admin",
  nickname: "Hibbitybabbety",
  time_zone: "Amsterdam",
  admin: true
)
adminamsterdam.save

adminus = User.create(
  email: "hybit.usa@hybit.com",
  password: "adminadmin",
  first_name: "USA",
  last_name: "Hybit Admin",
  nickname: "HabbityBabbity",
  time_zone: "Central America",
  admin: true
)
adminus.save

# Need users? uncomment these lines #
rafomeister = User.create(nickname: "Rafomeister", email: "rafael.kennedy@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Rafael", last_name: "Kennedy", points: 10, age: 35)
# rafael = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/rafael.jpeg'))
# rafomeister.photo.attach(io: rafael, filename: "rafael.jpeg", content_type: "image/jpeg")
rafomeister.save
puts "created user: Rafael - nickname: Rafomeister - rafael.kennedy@hybit.com - password: secret"

moremoore = User.create(nickname: "Moremoore", email: "hasan.moore@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Hasan", last_name: "Moore", points: 21, age: 34)
# hasan = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/hasan.jpeg'))
# moremoore.photo.attach(io: hasan, filename: "hasan.jpeg", content_type: "image/jpeg")
moremoore.save
puts "created user: MoreMoore- nickname: Moremoore - hasan.moore@hybit.com - password: secret"

fawnshawn = User.create(nickname: "FawnShawn", email: "shawn.chapman@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Shawn", last_name: "Chapman", points: 18, age: 33)
# shawn = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/shawn.jpeg'))
# fawnshawn.photo.attach(io: shawn, filename: "shawn.jpeg", content_type: "image/jpeg")
fawnshawn.save
puts "created user: Shawn - nickname: fawnshawn - email: shawn.chapman@hybit.com - password: secret"

mokhanbringit = User.create(nickname: "MoKhanBringIt", email: "mohammed.khan@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Mohammed", last_name: "Khan", points: 15, age: 24)
# mohammed = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/mohammed.jpeg'))
# mokhanbringit.photo.attach(io: mohammed, filename: "mohammed.jpeg", content_type: "image/jpeg")
mokhanbringit.save
puts "created user: Mohammed nickname: mokhanbringit - email: mohammed.khan@hybit.com - password: secret"

racymacy = User.create(nickname: "RacyMacy", email: "macy.moreno@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Macy", last_name: "Moreno", points: 13, age: 31)
# macy = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/macy.jpeg'))
# racymacy.photo.attach(io: macy, filename: "macy.jpeg", content_type: "image/jpeg")
racymacy.save
puts "created user: Macy nickname: racymacy - email: macy.moreno@hybit.com - password: secret"

lanatheadvil = User.create(nickname: "LanatheAdvil", email: "lana.rayes@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Lana", last_name: "Rayes", points: 31, age: 32)
# lana = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/lana.jpeg'))
# lanatheadvil.photo.attach(io: lana, filename: "lana.jpeg", content_type: "image/jpeg")
lanatheadvil.save
puts "created user: Lana nickname: LanatheAdvil, email: lana.rayes@hybit.com, password: secret"

# josefinable = User.create(nickname: "Josefinable", email: "josefine.welch@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Josefine", last_name: "Welch", points: 37, age: 30)
# josefine = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/josefine.jpeg'))
# josefinable.photo.attach(io: josefine, filename: "josefine.jpeg", content_type: "image/jpeg")
# josefinable.save
# puts "created user: Josefine - nickname: Josefinable, email: josefine.welch@hybit.com, password: secret"

hyperhana = User.create(nickname: "HyperHana", email: "hana.goddard@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Hana", last_name: "Goddard", points: 35, age: 28)
# hana = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/hana.jpeg'))
# hyperhana.photo.attach(io: hana, filename: "hana.jpeg", content_type: "image/jpeg")
hyperhana.save
puts "created user: Hana - nickname: HyperHana, email: hana.goddard@hybit.com, password: secret"

libbybug = User.create(nickname: "Libbybug", email: "libby.mcbride@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Libby", last_name: "McBride", points: 86, age: 27)
# libby = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/libby.jpeg'))
# libbybug.photo.attach(io: libby, filename: "libby.jpeg", content_type: "image/jpeg")
libbybug.save
puts "created user: Libby - nickname: Libbybug, email: libby.mcbride@hybit.com - password: secret"

harttart = User.create(nickname: "HartTart", email: "aysha.hart@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Aysha", last_name: "Hart", points: 23, age: 26)
# aysha = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/aysha.jpeg'))
# harttart.photo.attach(io: aysha, filename: "aysha.jpeg", content_type: "image/jpeg")
harttart.save
puts "created user: Aysha - nickname: HartTart, email: aysha.hart@hybit.com - password: secret"

nguyella = User.create(nickname: "NguyellaDeVille", email: "tamara.nguyen@hybit.com", password: "secret", time_zone: "Amsterdam", first_name: "Tamara", last_name: "Nguyen", points: 12, age: 23)
# nguyen = File.open(File.join(Rails.root, 'app/assets/images/fakepeople/nguyen.jpeg'))
# nguyella.photo.attach(io: nguyen, filename: "nguyen.jpeg", content_type: "image/jpeg")
nguyella.save
puts "created user: Tamara - nickname: NguyellaDeVille, email: tamara.nguyen@hybit.com - password: secret"

#### Rafomeister - test for recipocated friends ##############
puts "creating friendships between different users"
Friendship.create(user_id: rafomeister.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: fawnshawn.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: mokhanbringit.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: racymacy.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: lanatheadvil.id, mutual: true)
# Friendship.create(user_id: rafomeister.id, friend_id: josefinable.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: libbybug.id, mutual: true)
Friendship.create(user_id: rafomeister.id, friend_id: harttart.id, mutual: true)
puts "created friendships: user_id Rafomeister, friend_id (different)"
Friendship.create(user_id: moremoore.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: fawnshawn.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: mokhanbringit.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: racymacy.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: lanatheadvil.id, friend_id: rafomeister.id, mutual: true)
# Friendship.create(user_id: josefinable.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: libbybug.id, friend_id: rafomeister.id, mutual: true)
Friendship.create(user_id: harttart.id, friend_id: rafomeister.id, mutual: true)
puts "created reciprocated friendships for: user_id (different), friend_id Rafomeister"
#### NGUYELLA - test for not recipocated friends ##############
Friendship.create(user_id: moremoore.id, friend_id: nguyella.id, mutual: false)
Friendship.create(user_id: fawnshawn.id, friend_id: nguyella.id, mutual: false)
Friendship.create(user_id: mokhanbringit.id, friend_id: nguyella.id, mutual: false)
Friendship.create(user_id: racymacy.id, friend_id: nguyella.id, mutual: false)
Friendship.create(user_id: lanatheadvil.id, friend_id: nguyella.id, mutual: false)
puts "created friendships for: user_id(different, friend_id Nguyella, mutual = false"
Friendship.create(user_id: nguyella.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: nguyella.id, friend_id: fawnshawn.id, mutual: true)
Friendship.create(user_id: nguyella.id, friend_id: libbybug.id, mutual: false)
Friendship.create(user_id: nguyella.id, friend_id: harttart.id, mutual: false)
puts "created friendships for nguyella"
Friendship.create(user_id: hyperhana.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: hyperhana.id, friend_id: fawnshawn.id, mutual: true)
Friendship.create(user_id: hyperhana.id, friend_id: mokhanbringit.id, mutual: true)
Friendship.create(user_id: hyperhana.id, friend_id: racymacy.id, mutual: true)
Friendship.create(user_id: hyperhana.id, friend_id: lanatheadvil.id, mutual: true)
puts "created friendships: user_id Hyperhana, friend_id (different)"
Friendship.create(user_id: moremoore.id, friend_id: hyperhana.id, mutual: true)
Friendship.create(user_id: fawnshawn.id, friend_id: hyperhana.id, mutual: true)
Friendship.create(user_id: mokhanbringit.id, friend_id: hyperhana.id, mutual: true)
Friendship.create(user_id: racymacy.id, friend_id: hyperhana.id, mutual: true)
Friendship.create(user_id: lanatheadvil.id, friend_id: hyperhana.id, mutual: true)
puts "created reciprocated friendships for: user_id (different), friend_id Hyperhana"
Friendship.create(user_id: harttart.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: harttart.id, friend_id: libbybug.id, mutual: true)
Friendship.create(user_id: harttart.id, friend_id: fawnshawn.id, mutual: true)
puts "created friendships: user_id harttart, friend_id (different)"
Friendship.create(user_id: moremoore.id, friend_id: harttart.id, mutual: true)
Friendship.create(user_id: fawnshawn.id, friend_id: harttart.id, mutual: true)
Friendship.create(user_id: libbybug.id, friend_id: harttart.id, mutual: true)
puts "created reciprocated friendships for: user_id (different), friend_id HartTart"
Friendship.create(user_id: moremoore.id, friend_id: fawnshawn.id, mutual: true)
Friendship.create(user_id: moremoore.id, friend_id: mokhanbringit.id, mutual: true)
Friendship.create(user_id: moremoore.id, friend_id: lanatheadvil.id, mutual: true)
Friendship.create(user_id: moremoore.id, friend_id: libbybug.id, mutual: true)
puts "created friendships: user_id MoreMoore, friend_id (different)"
Friendship.create(user_id: fawnshawn.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: mokhanbringit.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: lanatheadvil.id, friend_id: moremoore.id, mutual: true)
Friendship.create(user_id: libbybug.id, friend_id: moremoore.id, mutual: true)
puts "created reciprocated friendships for: user_id (different), friend_id MoreMoore"
Friendship.create(user_id: fawnshawn.id, friend_id: libbybug.id, mutual: false)
Friendship.create(user_id: fawnshawn.id, friend_id: mokhanbringit.id, mutual: true)
puts "created friendships for: user_id(different, friend_id FawnShawn, mutual = false"
Friendship.create(user_id: mokhanbringit.id, friend_id: fawnshawn.id, mutual: true)
puts "created reciprocated friendships for: user_id (different), friend_id FawnShawn"

# ######## 1 Habit for all users############################################################

# ### daily habits ###
# puts "creating habits"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: harttart.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 10, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: josefinable.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 1, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: hyperhana.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 10, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: libbybug.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 2, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: nguyella.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 3, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# Habit.create(user_id: fawnshawn.id, name: "Drink water", start_date: "2023-02-08", frequency_number: 5, frequency_variabel: "day", category: "Recharging", importance_level: 3, contact_details: "+31624522771")
# puts "created habit 'Drink water' for all users, habit count = 1, frequency 1/day, importance level: 3, contact-details: +31624522771"

# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{rafomeister.nickname}")
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{moremoore.nickname}")
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{mokhanbringit.nickname}")
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{racymacy.nickname}")
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{lanatheadvil.nickname}")
# Habit.create(user_id: harttart.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{harttart.nickname}")
# Habit.create(user_id: josefinable.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{josefinable.nickname}")
# Habit.create(user_id: hyperhana.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{hyperhana.nickname}")
# Habit.create(user_id: libbybug.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{libbybug.nickname}")
# Habit.create(user_id: nguyella.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{nguyella.nickname}")
# Habit.create(user_id: fawnshawn.id, name: "Go to bed on time", start_date: "2023-02-08", timeframe: "evening", motivation: "You are always way less grumpy during the day if you've had your beauty-sleep! It helps manage your mood!", frequency_number: 1, frequency_variabel: "day", category: "Energy", importance_level: 4, contact_details: "+31624522771", public_shame: "Facebook of: #{fawnshawn.nickname}")
# puts "created habit 'Go to bed on time' for all users, habit count = different for each, frequency 1/day, importance level: 4, contact-details: +31624522771, public-shame: their fake facebook connection"

# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", category: "Order", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{rafomeister.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", category: "Order", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{moremoore.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", category: "Order", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{mokhanbringit.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", category: "Order", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{racymacy.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", category: "Order", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{lanatheadvil.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: harttart.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{harttart.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: josefinable.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{josefinable.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: hyperhana.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{hyperhana.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: libbybug.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{libbybug.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: nguyella.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{nguyella.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# Habit.create(user_id: fawnshawn.id, name: "Brush your teeth every night", start_date: "2023-02-08", timeframe: "evening", motivation: "Otherwise your breath smells like a dead bird..", frequency_number: 1, frequency_variabel: "day", importance_level: 5, contact_details: "+31624522771", public_shame: "Facebook of: #{fawnshawn.nickname}", bank_connection: "Bank-account of: KluxkluxKlan")
# puts "created habit 'Brush your teeth every night' for all users, habit count = different for each, frequency 1/day, importance_level: 5, contact-details: +31624522771, public-shame: their fake-facebook connection, bank-connection: Kluxkluxklan"


# ### weekly habits ###

# puts "creating weekly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Go to the gym", start_date: "2023-02-08", motivation: "You wanna look good for the wedding!!", frequency_number: 1, frequency_variabel: "week", category: "Recharging", importance_level: 2)
# puts "created weekly habit 'Go to the gym', habit count= different for each, frequency 1/week, importance_level: 2"


# puts "creating weekly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Meal-prep on Sunday", start_date: "2023-02-08", motivation: "Your money doesn't grow on trees, plan your meals all in advance so that you don't waste money shopping while you're hungry and buy ALL THE SNACKS...", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# puts "created weekly habit 'meal-prep', habit count= different for each, frequency 1/week, importance_level: 2"

# puts "creating weekly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Clean cat litter", start_date: "2023-02-08", motivation: "Your house will smell terrible if you wait any longer than a week! So do yourself and your friends a favour by cleaning it now!!", frequency_number: 1, frequency_variabel: "week", category: "Order", importance_level: 2)
# puts "created weekly habit 'Clean cat litter', habit count= different for each, frequency 1/week, importance_level: 2"

# #### Monthly Habits ####
# puts "creating monthly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Pay my rent", start_date: "2023-02-08", motivation: "Your landlord is already super mad that you forgot to pay it on time for 3 times. Don't piss him off more!!", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# puts "created monthly habit 'Pay my rent', habit count= different for each, frequency 1/month, importance_level: 2"

# puts "creating monthly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Deep-clean bathroom", start_date: "2023-02-08", motivation: "THINK ABOUT THE GERMSSSSS", frequency_number: 1, frequency_variabel: "month", importance_level: 2)
# puts "created monthly habit 'Deep-clean bathroom', habit count= different for each, frequency 1/month, importance_level: 2"

# puts "creating monthly habit for all users"
# Habit.create(user_id: rafomeister.id, buddy_id: mokhanbringit.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: moremoore.id, buddy_id: rafomeister.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: mokhanbringit.id, buddy_id: rafomeister.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: racymacy.id, buddy_id: rafomeister.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: lanatheadvil.id, buddy_id: rafomeister.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: harttart.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: josefinable.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: hyperhana.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: libbybug.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: nguyella.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# Habit.create(user_id: fawnshawn.id, name: "Check adhd-meds stock", start_date: "2023-02-08", motivation: "If you run out you cannot take them, make sure you have enough for at least one week. That's how long it takes to request a new prescription from the pharmacy!!", frequency_number: 1, frequency_variabel: "month", category: "Order", importance_level: 2)
# puts "created monthly habit 'Check adhd-meds stock', habit count= different for each, frequency 1/month, importan
# puts "creating test habits for Hybit Admin"
# Habit.create(user_id: admin.id, name: "Test 1 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"

# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "week", timeframe: "day")

# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "week", timeframe: "day")

# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "week", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - week", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "week", timeframe: "day")

# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 2, frequency_variabel: "month", timeframe: "day")

# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "month", timeframe: "day")
# Habit.create(user_id: adminamsterdam.id, name: "Changing Edit Testing - maand", start_date: Date.today, importance_level: 2, frequency_number: 3, frequency_variabel: "month", timeframe: "day")

# puts "creating test habits for Hybit Admin"
# Habit.create(user_id: admin.id, name: "Test 1 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xday", start_date: Date.new.yesterday, importance_level: 2, frequency_number: 1, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 2x day - streak will fail", motivation: "Geen mogelijkheid om 2x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 1, frequency_number: 2, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 3x a day - streak will fail", motivation: "Geen mogelijkheid om 3x af te vinken, dus streak is sowieso niet goed na afronden deadline", start_date: Date.yesterday, due_date: Date.today, importance_level: 2, habitcount_day: 2, frequency_number: 3, frequency_variabel: "day", timeframe: "morning")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xweek - evening", timeframe: "evening", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1x day - afternoon", timeframe: "afternoon", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"

# Habit.create(user_id: admin.id, name: "Test 1 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 2 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 3 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 4 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
# Habit.create(user_id: admin.id, name: "Test 5 - 1xday - morning", timeframe: "morning", start_date: Date.today, importance_level: 2, frequency_number: 1, frequency_variabel: "day")
# puts "#{Habit.last.id}"
