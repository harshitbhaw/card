class Billing < ApplicationRecord
    belongs_to :credit
    belongs_to :debit
    belongs_to :user
end
