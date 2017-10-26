# An spotify application that can:
#
# Capture an 3 artists. each artist has 2 songs
#
# The artist name are: { Justin Bieber, Justi bieber, Queen}

# A method that lists by category all the songs within that particular genre

#A method that lists songs by  a particular artist


class Song
  def initialize (song,genre,artist)
    @song=song
    @genre=genre
    @artist=artist
  end

 attr_accessor :song, :genre, :artist

end



playlist1 = Song.new("baby baby", "pop", "Justinbiber_usa")
playlist2 = Song.new("dont stop me now", "rock", "Queen")
playlist3 = Song.new("dont know lyrics", "pop", "Justinbiber_b")

puts playlist1.song
puts playlist1.genre
puts playlist1.artist

puts playlist2.song
puts playlist2.genre
puts playlist2.artist
