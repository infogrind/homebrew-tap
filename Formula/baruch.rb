class Baruch < Formula
  include Language::Python::Virtualenv

  desc "Rule-based backup of a Synology NAS to several drives, docked one at a time"
  homepage "https://github.com/infogrind/baruch"
  url "https://github.com/infogrind/baruch/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "6adc781681d049022328862df657a62d069639930c91c34f1887a7ab7f09ab0d"
  license "MIT"

  depends_on "libyaml"
  depends_on "python@3.12"
  depends_on "rsync"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"baruch"
  end
end
