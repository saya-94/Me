# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


EndUser.create!(
  [
    {
      email: 'test1@test.com',
      password: '111111',
      name: 'テスト太郎',
      sex: 'MAN',

    },
    {
      email: 'test2@test.com',
      password: '222222',
      name: 'テスト徹子',
      sex: 'WOMAN',
    },
    {
      email: 'test3@test.com',
      password: '333333',
      name: 'テスト子ども',
      sex: 'KIDS',
    }
  ]
)

Admin.create!(
    email: "admin@test.com",
    password: "aaaaaa"
)