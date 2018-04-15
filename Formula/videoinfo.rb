# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test videoinfo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
