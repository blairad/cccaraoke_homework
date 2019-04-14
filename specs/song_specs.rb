require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest:: Test

  def setup
    playlist = ["Son of a Preacherman","Go West","No Limit"]
    @playlist = Song.new(playlist)
  end

  def test_is_a_song
      @playlist = Song.new(2)
      assert_equal(2, @playlist.playlist())
  end


end
