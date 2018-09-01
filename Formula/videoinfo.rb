class Videoinfo < Formula
  desc "Simple script for command-line video stream info detection"
  homepage "https://github.com/infogrind/videoinfo"
  url "https://github.com/infogrind/videoinfo/archive/v1.0.tar.gz"
  sha256 "50965ec79e8559d8fd2aa65b95b488d787b54001962861915f47dba2f7c472dd"

  depends_on "ffmpeg"

  def install
    bin.install "videoinfo"
  end

  test do
    assert_predicate bin/"videoinfo", :exist?
  end
end
