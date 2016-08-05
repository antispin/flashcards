class CardsController < ApplicationController


  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def edit
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(params[:id])
  end

  def destroy
    @card = Card.find(params[:id])
  end


  protected




end
