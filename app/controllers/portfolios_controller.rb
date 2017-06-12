class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def javascript
    @javascript_portfolio_items = Portfolio.javascript
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is ready to view.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item was updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was deleted.' }
    end
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

end
