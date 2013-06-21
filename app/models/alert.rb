class Alert < ActiveRecord::Base
  attr_accessible :checked, :component, :content, :vehicle_id
end
