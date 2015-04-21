class Minut < ActiveRecord::Base
    has_many :minuti_details, dependent: :destroy

    validates :title, presence: true
    validates :title, length: {minimum:3, maximum: 50, message:'3文字以上・50文字以下としてください'}
end
