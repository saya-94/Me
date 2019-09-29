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

Genre.create!(
  [
    {
      genre: "カジュアル",
    },
    {
      genre: "キレカジ系",
    },
    {
      genre: "セレカジ",
    },
    {
      genre: "お姉系",
    },
    {
      genre: "きれいめ系",
    },
    {
      genre: "お兄・渋谷系",
    },
    {
      genre: "メンノン",
    },
    {
      genre: "コンサバ",
    },
    {
      genre: "モード系",
    },
    {
      genre: "サロン系",
    },
    {
      genre: "原宿",
    },
    {
      genre: "裏原",
    },
    {
      genre: "ギャル男",
    },
    {
      genre: "ガーリー系",
    },
    {
      genre: "フェミニン",
    },
    {
      genre: "レゲエ",
    },
    {
      genre: "ストリート",
    },
    {
      genre: "ホスト",
    },
    {
      genre: "ヒップホップ",
    },
    {
      genre: "森ガール",
    },
    {
      genre: "オラオラ",
    },
    {
      genre: "エスニック",
    },
    {
      genre: "ロック",
    },
    {
      genre: "B系",
    },
    {
      genre: "ギャル",
    },
    {
      genre: "姉ギャル",
    },
    {
      genre: "姫系",
    },
    {
      genre: "ゴスロリ",
    },
    {
      genre: "アメカジ",
    },
    {
      genre: "サーフ系",
    },
    {
      genre: "マリン系",
    },
    {
      genre: "ベーシック",
    },
    {
      genre: "オフィス",
    },
    {
      genre: "レトロ",
    },
    {
      genre: "プチプラ",
    },
    {
      genre: "オタク系",
    },
    {
      genre: "脱オタク系",
    },
    {
      genre: "その他",
    }
  ]
)