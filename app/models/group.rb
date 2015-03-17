class Group < ActiveRecord::Base
  has_many :group_users, :dependent => :delete_all
  has_many :users, :through => :group_users
end
