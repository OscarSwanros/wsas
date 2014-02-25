class CarsController < ApplicationController
  expose(:car, attributes: :car_params)
  expose(:cars)

  def create
    if car.save
      redirect_to car
    else
      render 'new'
    end
  end

  def update
    if car.update(car_params)
      redirect_to car
    else
      render 'edit'
    end
  end

  def destroy
    if car.destroy
      redirect_to cars_path
    end
  end

  private
  def car_params
    params.require(:car).permit(
      :model,
      :brand,
      :car_type,
      :color,
      :kms,
      :plates
    )
  end
end
