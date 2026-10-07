class Pftoynab < Formula
  include Language::Python::Virtualenv

  desc "Convert PostFinance CSV account exports into YNAB's file-based import format"
  homepage "https://github.com/infogrind/pftoynab"
  url "https://github.com/infogrind/pftoynab/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "9933c80dcfdad2b6ce3602e3024c49e37abdf7135f42be8090bd182d0fb59b64"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pftoynab"
  end
end
