class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :plans

  def name
    email.split('@').first.split('.').map(&:capitalize).join(' ')
  end

  def can_manage?
    if email =~ /dilyara/
      true
    else
      false
    end
  end
end
