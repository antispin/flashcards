class CardsController < ApplicationController

  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def edit
  end

  def create
    @card = Card.new(card_params)
    @card.review_date = Time.now.to_datetime
    if @card.save
      redirect_to @card, notice: 'Карточка создана'
    else
      render :new
    end
  end

  def update
    @card.review_date = Time.now.to_datetime
    if @card.update(card_params)
      redirect_to @card, notice: 'Карточка обновлена'
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to note_cards_url, notice: 'Карточка удалена'
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.fetch(:card, {}).permit(:original_text, :translated_text, :review_date)
  end
end
