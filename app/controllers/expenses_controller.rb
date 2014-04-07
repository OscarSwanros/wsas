class ExpensesController < ApplicationController
  expose(:expenses)
  expose(:expense, attributes: :expense_params)
  expose(:job) { Job.find(params[:job_id]) if params[:job_id] }
  expose(:workers) { job.workers }

  def create
    if expense.save
      expense.job.updated_at = Time.now
      if expense.job.save
        redirect_to expense
      end
    else
       render 'new'
    end
  end

  def update
    if expense.update(expense_params)
      expense.job.updated_at = Time.now
      if expense.job.save
        redirect_to expense
      end
    else
      render 'edit'
    end
  end

  def destroy
    if expense.destroy
      redirect_to expenses_path
    end
  end

  private
  def expense_params
    params.require(:expense).permit(
      :description,
      :cost,
      :job_id,
      :worker_id
    )
  end

end
