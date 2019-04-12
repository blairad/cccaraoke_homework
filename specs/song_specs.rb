require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest:: Test

  def setup
    @Track1 = Song.new("Son of a Preacherman")
    @Track2 = Song.new("Go West")
    @Track3 = Song.new("No Limit")

  end

  def test_is_a_song
      @Track2 = Song.new("Go West")
      assert_equal("Go West", @Track2.song)
  end


end
