class Dupdirs < Formula
  include Language::Python::Virtualenv

  desc "Script to find duplicates in two different directories"
  homepage "https://github.com/infogrind/dupdirs"
  url "https://github.com/infogrind/dupdirs/archive/v0.2.tar.gz"
  sha256 "7e54130a93c8ed80b1aea04be8b4cdb5d0d7ff5591be2b8d0a1820bb70a64304"

  depends_on "python@2" if MacOS.version <= :snow_leopard

  resource "fuzzywuzzy" do
    url "https://files.pythonhosted.org/packages/81/54/586e9f34401dc7f5248589765bb67d49b837e2f309f25a33e82e896cba0a/fuzzywuzzy-0.17.0.tar.gz"
    sha256 "6f49de47db00e1c71d40ad16da42284ac357936fa9b66bea1df63fed07122d62"
  end

  resource "python-Levenshtein" do
    url "https://files.pythonhosted.org/packages/42/a9/d1785c85ebf9b7dfacd08938dd028209c34a0ea3b1bcdb895208bd40a67d/python-Levenshtein-0.12.0.tar.gz"
    sha256 "033a11de5e3d19ea25c9302d11224e1a1898fe5abd23c61c7c360c25195e3eb1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"dupdirs", :exist?
    system bin/"dupdirs", "/tmp", "/tmp"
  end
end
