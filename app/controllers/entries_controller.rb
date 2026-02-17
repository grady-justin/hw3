class EntriesController < ApplicationController

  def new
    @place = Place.find(params[:id])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to "/places/#{@entry.place_id}"
    else
      @place = Place.find(entry_params[:place_id])
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id)
  end

end