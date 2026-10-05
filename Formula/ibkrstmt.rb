class Ibkrstmt < Formula
  include Language::Python::Virtualenv

  desc "Move Interactive Brokers activity statements from Downloads into an archive"
  homepage "https://github.com/infogrind/ibkrstmt"
  url "https://github.com/infogrind/ibkrstmt/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4592cea1325e6581afd600d97f8ca9173a3e31a431ee353ca01c749406795808"
  license "MIT"

  depends_on "python@3.11"

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/1f/ac/63d71aaedb59acbcdef491e6ca6469165e3771c9c74358204818fd9bc5a6/pypdf-6.19.0.tar.gz"
    sha256 "bbc43aca292369ccc6cbc8a921991ecf2538a3587ab5a116eff06c321d647155"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"ibkrstmt"
  end
end
