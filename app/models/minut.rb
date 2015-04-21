class Minut < ActiveRecord::Base
    has_many :minuti_details, dependent: :destroy
end
