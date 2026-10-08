class Brewreview < Formula
  include Language::Python::Virtualenv

  desc "Interactively review installed Homebrew formulae and remove unneeded ones"
  homepage "https://github.com/infogrind/brewreview"
  url "https://github.com/infogrind/brewreview/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5a29b76d7b88758a868e576c0330f8c72a1ab5525106c313ce18e305c7addf8e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"brewreview"
  end
end
