class Massrename < Formula
  desc "Tool to mass-rename files using regular expressions"
  homepage "https://github.com/infogrind/massrename"
  url "https://github.com/infogrind/massrename/archive/v1.0.tar.gz"
  sha256 "6da1628174188f78a12f4aabfb3cee87695efcd92e15377a18f05b059590224b"

  def install
    bin.install "massrename"
  end

  test do
    assert_predicate bin/"massrename", :exist?
  end
end
