class User < ApplicationRecord
  has_many :loans

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

private
  def set_default_kind_user
    self.kindUser ||= 2
  end
       
end
