class Minut < ActiveRecord::Base
    has_many :minuti_details
    accepts_nested_attributes_for :minuti_details
end
