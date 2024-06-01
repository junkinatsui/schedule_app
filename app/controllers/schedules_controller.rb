class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @shcedules = Schedule.new
  end

  def create
    @schedules = Shcedule.new(params.require(:schedule).permit(:title, :start_day, :end_day, :all_day))
    if @schedule.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :index
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
