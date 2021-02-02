class Weapon < ApplicationRecord

  validates :power_step, numericality: { equal_to: 100 }
  validates :power_base, numericality: { less_than_or_equal_to: 3000 }
  validates :level, numericality: { greather_than: 0, less_than_or_equal_to: 99 }

  def current_power
    (power_base+((level-1)*power_step))
  end

  def info
    #"#{self.name} ##{self.level}"
    "#{self.name}: #{self.description} - #{self.power_base} - #{self.power_step} - #{self.level}"
  end
end
