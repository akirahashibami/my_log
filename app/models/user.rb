class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  attachment :user_image, destroy: false

  def vlogs
    return Vlog.where(user_id: self.id)
  end

end
