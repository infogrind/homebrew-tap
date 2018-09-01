class Fullpath < Formula
  desc "Shell script to show the full path corresponding to a relative path"
  homepage "https://github.com/infogrind/fullpath"
  url "https://github.com/infogrind/fullpath/archive/v1.0.tar.gz"
  sha256 "14960e7bc04526561a8a9bc8e68ad59fc56cc5fe20f8c61ae7db8fb1c4215a65"

  def install
    bin.install "fullpath"
  end

  test do
    assert_predicate bin/"fullpath", :exist?
  end
end
