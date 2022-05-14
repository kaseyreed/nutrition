class NutritionController < ApplicationController
  def index
    @entries = NutritionEntry.order(consumed_at: :desc).all
    @training_entries = TrainingEntry.order(created_at: :desc).all
  end

  def create
    consumed_at = Time.parse("#{params[:date]} #{params[:time]}")

    NutritionEntry.create!(entry: params[:entry], consumed_at:,)
  end
end
