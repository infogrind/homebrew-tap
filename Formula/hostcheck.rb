class Hostcheck < Formula
  desc "Shell script to check if internet hosts are reachable"
  homepage "https://github.com/infogrind/hostcheck"
  url "https://github.com/infogrind/hostcheck/archive/v0.1.tar.gz"
  sha256 "d3f46c728d8380f8b2de9be634aa9d13a68e8c34f0934cf414cc5a12a856d5fc"

  def install
    bin.install "hostcheck"
  end

  test do
    assert_predicate bin/"hostcheck", :exist?
  end
end
