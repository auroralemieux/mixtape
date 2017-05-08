class SongsController < ApplicationController
  def index
    songs = Song.limit(13)
    render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok  end
end
