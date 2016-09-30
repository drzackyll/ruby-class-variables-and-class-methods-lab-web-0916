class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def Song.count
    @@count
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genre_count
    genre_hash = {}
    @@genres.map do |cat|
      genre_hash[cat] = @@genres.count(cat)
    end
    genre_hash
  end

  def Song.artist_count
    artist_hash = {}
    @@artists.map do |cat|
      artist_hash[cat] = @@artists.count(cat)
    end
    artist_hash
  end
end
