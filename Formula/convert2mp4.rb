class Convert2mp4 < Formula
  desc "Shell script to convert video files to mp4/x264"
  homepage "https://github.com/infogrind/convert2mp4"
  url "https://github.com/infogrind/convert2mp4/archive/v1.0.tar.gz"
  sha256 "568374b588c8c24e4045de72705b5d4f902c33b9a5217045841f9f1a1b4b87a1"

  depends_on "ffmpeg"

  def install
    bin.install "convert2mp4"
  end

  test do
    assert_predicate bin/"convert2mp4", :exist?
  end
end
