# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Hello World!'
puts '這個種子檔會自動建立一個帳號, 並且随机創建 10 個jobs，10个隐藏的jobs'

create_account = User.create([email: '469851461@qq.com', password: 'nk123456', password_confirmation: 'nk123456', is_admin: 'true'])
puts 'Admin account is created successfully!'

job_info = [
  '人工智能',
  '婚纱摄影师',
  '营养搭配师',
  '全栈工程师',
  'NASA计划',
  '招聘前端开发工程师',
  '设计师',
  '旅游达人',
  '招聘python工程师',
  '招聘高级JAVA研发工程师',
  '招聘高级数据挖掘工程师',
  '招聘高级客服经理'
]
create_jobs = for i in 1..10 do
                Job.create!([title: job_info[rand(job_info.length)], description: "这是一个公开的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
              end
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: "这是一个隐藏的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
