class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :fuel, :km, :user_id, :vehicle_model, :vehicle_type, :year

  belongs_to :user

scope :recent, order("created_at desc").limit(3)
scope :fresh, where('user_id = ?', 1)

  scope :popular,
    where('vehicles.user_id = 1')
    #.group('vehicle.brand')
# where('vehicles.user_id = ?', user).group('vehicles.brand')
  
scope :rotting, where(rotting: true)

## Zombie.rotting.limit(5)
## Zombie.recent.rotting
## Zombie.recent.fresh.rotting

end
