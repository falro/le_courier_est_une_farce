class Payment < ActiveRecord::Base
     validates :name, :description, :typePayment, presence: true
end
