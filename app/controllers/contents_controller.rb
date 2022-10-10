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
    @content = Content.new(content_params)
    @content.date = Time.current
    if @content.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end
  def edit
    redirect_to action: "new"
  end

  private

    def content_params
      params.require(:content).permit(:content)
    end
  
end
