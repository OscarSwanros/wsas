class JobsController < ApplicationController
  expose(:jobs)
  expose(:job, attributes: :job_params)
  expose(:cars) { Car.all }
  expose(:workers) { Worker.all }
  expose(:car) { Car.find(job.car_id) }
  expose(:expenses) { Expense.where(job_id: job.id) }

  def create
    if job.save
      redirect_to job
    else
       render 'new'
    end
  end

  def update_status
    new_status = params[:new_status]

    case new_status
    when "2"
      job.start
      job.update_description= "Se inicio el trabajo"
    when "3"
      job.pause
      job.update_description = "Se pauso el trabajo"
    when "4"
      job.restart
      job.update_description = "Se reinicio el trabajo"
    when "5"
      job.finish
      job.update_description = "Se finalizo el trabajo"
    end

    if job.save
      redirect_to job
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
      :report_number,
      :quote,
      :worker_ids => [],
    )
  end
end
