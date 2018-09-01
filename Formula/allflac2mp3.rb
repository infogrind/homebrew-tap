class Allflac2mp3 < Formula
  desc "Simple script for automatic FLAC to MP3 conversion"
  homepage "https://github.com/infogrind/allflac2mp3"
  url "https://github.com/infogrind/allflac2mp3/archive/v1.0.tar.gz"
  sha256 "adb86cf0b99a3d97027c8c7f98bf9ca0f7b59d4817cdb0c205eb68204a71bae0"

  depends_on "flac"
  depends_on "lame"

  def install
    bin.install "allflac2mp3"
  end

  test do
    assert_predicate bin/"allflac2mp3", :exist?
  end
end
