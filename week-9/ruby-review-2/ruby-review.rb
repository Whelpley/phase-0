# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution

class Song

  attr_accessor :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def play
    puts "#{@title} by #{@artist}"
  end

end


class Playlist

  attr_accessor :song_array

  def initialize(*song_array)
    @song_array = song_array
  end

  def add(*songs)
    @song_array.push(songs).flatten!
  end

  def num_of_tracks
    @song_array.length
  end

  def remove(song)
    @song_array.delete(song)
  end

  def includes?(song)
    @song_array.include?(song)
  end

  def play_all
    @song_array.each do |song|
      puts "#{song.title} by #{song.artist}"
    end
  end

  def display
    puts "All of your songs:"
    @song_array.each do |song|
      puts "#{song.title} by #{song.artist}"
    end
  end


end

# Refactored Solution

# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true

my_playlist.play_all
my_playlist.display



# Reflection
=begin

This one was tricky - we had trouble calling the play_all and display methods initially; we could not get the .title and .artist method calls from the Song object to work within the Playlist object. It turned out that the problem was in the .add method, where if multiple songs were passed in, they were added to the @song_array as a sub-array. To correct for this, we ran @song_array through .flatten! to make it a one-dimensional array like we wanted.
=end
