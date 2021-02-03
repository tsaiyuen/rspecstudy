class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def create
    @weapon = Weapon.create(weapon_params)
  end

  def destroy
    @weapon = Weapon.find(params[:id])
    @weapon.destroy
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def weapon_params
    params.require(:weapon).permit(:name, :description, :level, :power_base, :power_step)
  end
end
