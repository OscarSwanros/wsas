class WorkersController < ApplicationController
  expose(:workers)
  expose(:worker, attributes: :worker_params)

  def create
    if worker.save
      redirect_to worker
    else
      render 'new'
    end
  end

  def update
    if worker.update(worker_params)
      redirect_to worker
    else
      render 'edit'
    end
  end

  def destroy
    if worker.destroy
      redirect_to workers_path
    end
  end

  private
  def worker_params
    params.require(:worker).permit(
      :name,
      :woker_type
    )
  end
end
