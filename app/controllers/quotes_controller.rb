class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find_by(id: params[:id])
  end

  def new
  end

  def create
    @quote = Quote.new
    @quote.content = params[:content]
    @quote.author = params[:author]

    if @quote.save
      redirect_to quotes_url, notice: "Quote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @quote = Quote.find_by(id: params[:id])
  end

  def update
    @quote = Quote.find_by(id: params[:id])
    @quote.content = params[:content]
    @quote.author = params[:author]

    if @quote.save
      redirect_to quotes_url, notice: "Quote updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @quote = Quote.find_by(id: params[:id])
    @quote.destroy

    redirect_to quotes_url, notice: "Quote deleted."
  end
end
