class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :authentication_keys => [:phonenumber]
  #,:confirmable ⇦ これがあると登録されたメールアドレス宛に確認メールが飛ばされ、それを確認しないとログインできない

  validates_uniqueness_of :phonenumber
  validates_presence_of :phonenumber
  #attr_accessor :login
  #validates :username,uniqueness: { case_sensitive: :false },length: { minimum: 4, maximum: 20 }
  #userテーブルにusernameがないためエラーになります。
  def self.find_first_by_auth_conditions(warden_conditions)
   conditions = warden_conditions.dup
   if login = conditions.delete(:login)
     where(conditions).where(["phonenumber = :value", { :value => login }]).first
   else
     where(conditions).first
   end
  end


  def email_required?
   false
  end

  def email_changed?
    false
  end

end
