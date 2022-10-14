class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  def new
    @content = Content.new
  end
  def show
    @content = Content.find(params[:id])
  end
  def create
    now = Time.current
    if not Content.where(date: now.in_time_zone.all_day).empty?
      update(now)
    elsif
      @content = Content.new(content_params)
      @content.date = now
      if @content.save
        redirect_to action: "index"
      else
        render 'new'
      end
    end
  end
  def update(date)
    @content = Content.where(date: date.in_time_zone.all_day)[0]
    @content.update(content_params)
    redirect_to action: "index"      
  end
  def edit
    redirect_to action: "new"
  end
  def destroy
    Content.find(params[:id]).destroy
    flash[:success] = "消した"
    redirect_to contents_url
  end
  private

    def content_params
      params.require(:content).permit(:content)
    end
  
end
