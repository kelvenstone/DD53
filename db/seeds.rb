# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "設定基礎資料，測試用帳號為admin@test.com，password為12345678"

u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email
u.password = "12345678"              # 最少要八碼
u.password_confirmation = "12345678" # 最少要八碼
u.is_admin = true
u.save

o = OfficialHolidayOption.new
o.name = "星期一"
o.datename = "1"
o.save

o = OfficialHolidayOption.new
o.name = "星期二"
o.datename = "2"
o.save

o = OfficialHolidayOption.new
o.name = "星期三"
o.datename = "3"
o.save

o = OfficialHolidayOption.new
o.name = "星期四"
o.datename = "4"
o.save

o = OfficialHolidayOption.new
o.name = "星期五"
o.datename = "5"
o.save

o = OfficialHolidayOption.new
o.name = "星期六"
o.datename = "6"
o.save

o = OfficialHolidayOption.new
o.name = "星期日"
o.datename = "0"
o.save
