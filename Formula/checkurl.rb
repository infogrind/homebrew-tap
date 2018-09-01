class Checkurl < Formula
  desc "Shell script to test if a given URL is valid"
  homepage "https://github.com/infogrind/checkurl"
  url "https://github.com/infogrind/checkurl/archive/v1.0.tar.gz"
  sha256 "d716da9ca5fe501b73b0baad5a7ab4fdb4ead3499d2c18d844353447f4318076"

  def install
    mv "checkurl.sh", "checkurl"
    bin.install "checkurl"
  end

  test do
    assert_predicate bin/"checkurl", :exist?
  end
end
