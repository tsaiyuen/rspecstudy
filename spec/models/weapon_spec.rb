require 'rails_helper'


RSpec.describe Weapon, type: :model do
  
  it 'is invalid if the power_base is not greather than or equal to 3000' do
    weapon = build(:weapon, power_base: Random.rand(3000..9999))
    expect(weapon).to_not be_valid
  end

  it 'is invalid if the power_step is different from 100' do
   weapon = build(:weapon, power_step: Random.rand(0..99))
   expect(weapon).to_not be_valid
  end
  
  it "is invalid if the level is not between 1 and 99" do
  weapon = build(:weapon, power_step: Random.rand(101..9999))
    expect(weapon).to_not be_valid
  end

  it "should return the correct weapon info" do
    name = FFaker::AnimalES
    description = FFaker::LoremAR
    power_base = Random.rand(3000..999999)
    power_step = 100
    level = Random.rand(1..99)
    weapon = Weapon.create(name: name, description: description, power_base: power_base, power_step: power_step, level: level)

    expect(weapon.info).to eq("#{name}: #{description} - #{power_base} - #{power_step} - #{level}")
  end

end
