class Command < ActiveRecord::Base
    belongs_to :prank_type
    belongs_to :prank
    belongs_to :letter
    belongs_to :type_letter
    
    #attr_accessible :prank_type_id, :prank_id, :type_letter_id, :letter_id, :message, :totalPrice
end
