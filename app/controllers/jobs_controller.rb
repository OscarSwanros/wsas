class JobsController < ApplicationController
  expose(:jobs)
  expose(:job, attributes: :job_params)
  expose(:cars) { Car.all }

  def create
    if job.save
      redirect_to job
    else
       render 'new'
    end
  end

  def update
    if job.update(job_params)
      redirect_to job
    else
      render 'edit'
    end
  end

  def destroy
    if job.destroy
      redirect_to job_path
    end
  end

  private
  def job_params
    params.require(:job).permit(
      :car_id,
      :worker_id,
      :comments,
      :state,
      :report_number
    )
  end
end
