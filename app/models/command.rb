class Command < ActiveRecord::Base
    belongs_to :prank_type
    belongs_to :prank
    belongs_to :letter
    belongs_to :type_letter
    
end
