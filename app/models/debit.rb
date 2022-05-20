class Debit < ApplicationRecord
    belongs_to :user
    has_many :billings
    validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, presence: true

    validates :card_number, presence: true

    validates :cvc, presence: true
    validates :valid_from, presence: true
    validates :valid_thru, presence: true
end
