class Bank < ActiveRecord::Base

  validates :title, presence: true
  validates :code, presence: true
  has_many :accounts, :dependent => :delete_all

end
