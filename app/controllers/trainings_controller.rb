class TrainingsController < ApplicationController
  def create
    TrainingEntry.create!(when: params[:when], feeling: params[:feeling])
  end
end
