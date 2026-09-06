class Ibkrstmt < Formula
  include Language::Python::Virtualenv

  desc "Move Interactive Brokers activity statements from Downloads into an archive"
  homepage "https://github.com/infogrind/ibkrstmt"
  url "https://github.com/infogrind/ibkrstmt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0739083847c0792b7a472a6e684c4b55c91e2bbb73569b77f1ea858470033995"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"ibkrstmt"
  end
end
