# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Massrename < Formula
  desc "Tool to mass-rename files using regular expressions"
  homepage "https://github.com/infogrind/massrename"
  url "https://github.com/infogrind/massrename/archive/v1.0.tar.gz"
  version "1.0"
  sha256 "6da1628174188f78a12f4aabfb3cee87695efcd92e15377a18f05b059590224b"

  # depends_on "cmake" => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
      bin.install "massrename"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test massrename`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
