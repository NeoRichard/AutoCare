class Role < ActiveRecord::Base
  has_and_belongs_to_many :providers, :join_table => :providers_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
end
