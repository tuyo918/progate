class User < ApplicationRecord
  has_secure_password
  
  validates :name, {presence: true} 
  validates :email, {presence: true, uniqueness: true}


  
  def posts
    return Post.where(user_id: self.id)
  end
end


# データベース（usersテーブル）にデーターを保存したり、参照して取得したりする
# Railsはテーブルをモデル化して紐付けしている。それによってモデル（classをインスタンス化して）として扱える。

# 普通はSQL言語を使ってsqlコマンドを実行してデータベースとのやり取りをする
# （例： select * from users; ） <==> User.all
# validates(バリデーション)もテーブルにあるカラムに対する色々な条件をこのuser.rbに書く