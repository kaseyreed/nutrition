class NutritionController < ApplicationController
  def index
    # @entries = NutritionEntry.order(consumed_at: :desc).all
    @entries_map = NutritionEntry.order(consumed_at: :desc).all.group_by { |e| e.consumed_at.to_date }
    @training_entries = TrainingEntry.order(created_at: :desc).all
  end

  def create
    consumed_at = Time.parse("#{params[:date]} #{params[:time]}")

    NutritionEntry.create!(entry: params[:entry], consumed_at:,)

    redirect_to action: 'index'
  end

  def search
    query = params[:query].strip

    if query.length < 3
      return []
    end

    result = NutritionEntry.where('LOWER(entry) LIKE LOWER(?)', "%#{query}%")
                  .select(:entry)
                  .order(entry: :asc)
                  .distinct
                  .map(&:entry)

    respond_to do |format|
      format.json do
        render json: {
          results: result
        }.to_json
      end
    end
  end
end
