class Hostcheck < Formula
  desc "Shell script to check if internet hosts are reachable"
  homepage "https://github.com/infogrind/hostcheck"
  url "https://github.com/infogrind/hostcheck/archive/v0.2.tar.gz"
  sha256 "1769d025f350d1540b021a295dba620fc159181af673283a028872962ecf82ad"

  def install
    bin.install "hostcheck"
  end

  test do
    assert_predicate bin/"hostcheck", :exist?
  end
end
