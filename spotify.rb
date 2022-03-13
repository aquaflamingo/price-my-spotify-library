require 'rspotify' 
require 'forwardable'

RSpotify::authenticate(
  ENV['SPOTIFY_CLIENT_ID'], 
  ENV['SPOTIFY_CLIENT_SECRET']
)

class Spotify
  def initialize; end

  def user(uname)
    RSpotify::User.find(uname)
  end
end

class Playlist
  extend Forwardable

  def_delegators :@list, :name, :tracks

  def initialize(plist)
    @list = plist
  end

  def compute_price(track_price: 0.99)
    @price ||= @list.tracks.count * track_price
  end
end
