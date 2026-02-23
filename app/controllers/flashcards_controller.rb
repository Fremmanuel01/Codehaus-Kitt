class FlashcardsController < ApplicationController
  def index
    @decks = policy_scope(FlashcardDeck)
    authorize @decks
  end

  def show
    @deck = FlashcardDeck.find(params[:id])
    authorize @deck
  end

  def bookmarks
    @decks = policy_scope(FlashcardDeck)
    authorize @decks, :index?
    render :index
  end

  def needs_attention
    @decks = policy_scope(FlashcardDeck).joins(:user_flashcard_progresses).where(user_flashcard_progresses: { status: "needs_attention", user_id: current_user.id })
    authorize @decks, :index?
    render :index
  end

  def rehearse
    @decks = policy_scope(FlashcardDeck)
    authorize @decks, :index?
    render :index
  end
end
