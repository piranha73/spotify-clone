class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  def index
    @tracks = Track.all
  end

  def show; end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.save
    redirect_to track_path(@track)
  end

  def edit; end

  def update
    @track.update(track_params)
    redirect_to track_path(@track)
  end

  def destroy
    @track.destroy
    redirect_to tracks_path
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    params.require(:track).permit(:title, :artist, :length, :published)
  end
end
