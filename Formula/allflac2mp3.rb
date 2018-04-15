class Allflac2mp3 < Formula
  desc "Simple script for automatic FLAC to MP3 conversion"
  homepage "https://github.com/infogrind/allflac2mp3"
  url "https://github.com/infogrind/allflac2mp3/archive/v1.0.tar.gz"
  sha256 "adb86cf0b99a3d97027c8c7f98bf9ca0f7b59d4817cdb0c205eb68204a71bae0"

  # depends_on "cmake" => :build
  depends_on "lame"
  depends_on "flac" => :build

  def install
      bin.install "allflac2mp3"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test allflac2mp3`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
