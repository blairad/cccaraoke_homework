require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest:: Test

  def setup
    @song1 = Song.new("Son of a Preacherman")
    @song2 = Song.new("Go West")
    @song3 = Song.new("No Limit")
   
  end

  def test_is_a_song
      assert_equal("Son of a Preacherman", @song1.title)
  end


end
