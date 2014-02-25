class ClientsController < ApplicationController
  expose(:client, attributes: :client_params)
  expose(:clients)

  def create
    if client.save
      redirect_to client
    else
      render 'new'
    end
  end

  def update
    if client.update(client_params)
      redirect_to client
    else
      render 'edit'
    end
  end

  def destroy
    if client.destroy
      redirect_to clients_path
    end
  end

  private
  def client_params
    params.require(:client).permit(
      :name,
      :address,
      :zip,
      :phone,
      :rfc
    )
  end
end
