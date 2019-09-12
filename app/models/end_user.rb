class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー名 => 空欄だめ、1文字〜30文字以内で入力
  validates :name, presence: true, length: { in: 1..30 }
  # メールアドレス => 空欄だめ、【***@***.***】の形で入力　例:aaa@aa.a
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }


  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :followers, dependent: :destroy
  has_many :counts, dependent: :destroy


  # 論理削除の定義追記
  acts_as_paranoid

  private
    def end_user_params
    params.require(:end_user).permit(:name,:email)
    end


    def change_password_params
    params.require(:end_user).permit(:reset_password_token, :password, :password_confirmation, :curent_password)
    end


    def correct_user
    user = EndUser.find(params[:id])
    if current_end_user != user
    redirect_to end_user_path(current_end_user)
    end
    end



end
