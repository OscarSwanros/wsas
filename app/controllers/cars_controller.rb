class CarsController < ApplicationController
  expose(:cars)
  expose(:car, attributes: :car_params)
  expose(:clients) { Client.all }

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
    if client.destroy
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
      :plates,
      :client_id
    )
  end
end
