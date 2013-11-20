# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
users = ['dimas','greenny','bigbraza','tarik','svin']

User.create(name: 'admin', email: "admin@mail.com", password: "qqqwwwsss", admin: true)
=======
users = ['dimas','greeny','bigbraza','tarik','svin']
>>>>>>> 2f5e5d1f05fdd140a824eba778098d070b60f951

users.each do |user|
	u = User.create(name: user, email: "#{user}@mail.com", password: "qqqwwwsss")
	3.times do |i|
		Post.create(body: "#{user}_post_#{i}", user_id: u.id)
	end
end