class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

 enum role: {gest: 0,contribution: 1}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:trackable, :validatable



end
