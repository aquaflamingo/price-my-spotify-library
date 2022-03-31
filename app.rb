require 'pry'
require 'fileutils'
require 'terminal-table'
require_relative 'spotify'

class App
  PlaylistCost = Struct.new(:name, :price)

  def initialize(config)
    @config = config
  end

  def export_library
    user = s.user(@config[:user])
    all_playlists = gather_all_playlists(user)

    FileUtils.mkdir_p("out")

    all_playlists.each do |p|
      pl = Playlist.new(p)

      pl_name = pl.name.downcase.gsub(/ /,'_')
      pl_name = pl_name.gsub(/\//,'')

      File.open("out/#{pl_name}.txt", "w") do |f|
        pl.tracks.each do |t|
          all_artists = t.artists.map(&:name).join(", ")

          f.puts "#{all_artists} - #{t.name}"
        end
      end
    end
  end

  def price_library
    user = s.user(@config[:user])

    all_playlists = gather_all_playlists(user)

    track_count = 0 

    playlists = all_playlists.map do |p|
      pl = Playlist.new(p)
      track_count += pl.tracks.count

      PlaylistCost.new(pl.name, pl.compute_price)
    end

    puts <<-EOM
Hello #{user.display_name}!

Your Spotify library is composed of:

#{playlists.count} playlists
#{track_count} tracks

If you wanted to purchase your entire Spotify library, it would cost around: #{playlists.sum(&:price)} USD.

#{table(playlists)}

    EOM
  end

  private 
  def s
    @s ||= Spotify.new
  end

  def gather_all_playlists(user)
    playlists = []
    offset = 0
    last_pull_count = 0
    
    # Can only pull from API in increments of 50
    # if the last pull count is a multiple of 50
    # we know we can keep pulling, if not, stop

    while last_pull_count % 50 == 0 do
      p = user.playlists(limit: 50, offset: offset)

      playlists << p

      offset += 50

      last_pull_count = p.count
    end

    playlists.compact.flatten
  end

  def table(plists)
    Terminal::Table.new do |t|
       t.headings = ['Playlist', 'Cost']
       plists.each do |p|
         t.add_row [p.name, p.price]
       end
     end
  end
end

