class Credit < ApplicationRecord
    belongs_to :user
    has_many :billings
    validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, presence: true

    validates :card_number, length: { is: 16 }, presence: true

    validates :cvc, length: {is: 3}, presence: true
    validates :start_Date, presence: true
    validates :end_date, presence: true

end
