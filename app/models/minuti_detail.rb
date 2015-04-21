class MinutiDetail < ActiveRecord::Base
    belongs_to :minut
    belongs_to :user
end
