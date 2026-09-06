class Pftoynab < Formula
  include Language::Python::Virtualenv

  desc "Convert PostFinance CSV account exports into YNAB's file-based import format"
  homepage "https://github.com/infogrind/pftoynab"
  url "https://github.com/infogrind/pftoynab/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4e6c6ea053b9117284d5ba860ac2bce630c0f86fb97aa3bc522a117fe1247cfa"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pftoynab"
  end
end
