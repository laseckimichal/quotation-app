class QuotesController < ApplicationController
  expose(:quotes) { Quote.all.page params[:page]}
  expose(:quote)

  def show
    redirect_to(action: :index)
  end

  def create
    if quote.save
      redirect_to(action: :index)
    else
      render :new
    end
  end

  def update
    if quote.update(quote_params)
      redirect_to(action: :index)
    else
      render :edit
    end
  end

  def destroy
    quote&.destroy
    quote&.destroyed? && redirect_to(action: :index)
  end

  private

    def quote_params
      params.require(:quote).permit(:body)
    end
end
