class User < ActiveRecord::Base
  has_many :group_users, :dependent => :delete_all
  has_many :groups, :through => :group_users
end
