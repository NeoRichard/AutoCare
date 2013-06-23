class Vehicle < ActiveRecord::Base

  has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }

  attr_accessible :brand, :fuel, :km, :user_id, :vehicle_model, :vehicle_type, :year, :trim
  attr_accessible :image, :money, :default => 0


  belongs_to :user

scope :recent, -> { order("vehicles.updated_at DESC") }
scope :by_brand, -> brand { where(brand: brand) unless brand.nil?}
scope :my_cars, ->  u { where(user: u) unless u.nil? }

#  def self.popular3 brand
#  	where("vehicles.brand = ?", brand).group("vehicle_model")  unless brand.nil?}
#  end
#scope :popular, -> brand { where("vehicles.brand = ?", brand).group("vehicle_model")  unless brand.nil?}


#  scope :last_week, lambda { where("created_at < ?", Time.zone.now )  }


  # scope :popular, lambda do |b|
  #   joins(:vehicle).where('vehicle.brand = ?', b) 
  # end
  # scope :n_week_before, lambda { |time| where("created_at < ?", time) }

## .group('vehicle.vehicle_model')
## Zombie.rotting.limit(5)
## Zombie.recent.rotting
## Zombie.recent.fresh.rotting

end
