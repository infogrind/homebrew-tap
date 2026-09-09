class Ccmove < Formula
  include Language::Python::Virtualenv

  desc "Move Postfinance credit card statements from Downloads into an archive"
  homepage "https://github.com/infogrind/ccmove"
  url "https://github.com/infogrind/ccmove/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "997510fe61cfa3a87c010205bd8cfc79dde6408d313345c6292b9c566eedbba7"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"ccmove"
  end
end
