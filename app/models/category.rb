class Category < ActiveHash::Base
  self.data = [
    { id: 1, category: '--' },
    { id: 2, category: 'ペットショップ' },
    { id: 3, category: '猫カフェ' },
    { id: 4, category: '里親募集' },
    { id: 5, category: 'ご飯'},
    { id: 6, category: 'おもちゃ'},
    { id: 7, category: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :rooms
end