class Gitscan < Formula
  include Language::Python::Virtualenv

  desc "Shell script to scan all subdirectories for basic git information"
  homepage "https://github.com/infogrind/gitscan"
  url "https://github.com/infogrind/gitscan/archive/v0.1.tar.gz"
  sha256 "e0f5a06c5e1fc213e2dded754319909f386b48f643ddb2a7bb68e1b73645077f"

  depends_on "python@2" if MacOS.version <= :snow_leopard

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/4d/e8/98e06d3bc954e3c5b34e2a579ddf26255e762d21eb24fede458eff654c51/GitPython-2.1.11.tar.gz"
    sha256 "8237dc5bfd6f1366abeee5624111b9d6879393d84745a507de0fda86043b65a8"
  end

  resource "gitdb2" do
    url "https://files.pythonhosted.org/packages/b9/36/4bdb753087a9232899ac482ee2d5da25f50b63998d661aa4e8170acd95b5/gitdb2-2.0.4.tar.gz"
    sha256 "bb4c85b8a58531c51373c89f92163b92f30f81369605a67cd52d1fc21246c044"
  end

  resource "smmap2" do
    url "https://files.pythonhosted.org/packages/ad/e9/0fb974b182ff41d28ad267d0b4201b35159619eb610ea9a2e036817cb0b8/smmap2-2.0.4.tar.gz"
    sha256 "dc216005e529d57007ace27048eb336dcecb7fc413cfb3b2f402bb25972b69c6"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"gitscan", :exist?
  end
end
