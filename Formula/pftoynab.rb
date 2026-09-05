class Pftoynab < Formula
  include Language::Python::Virtualenv

  desc "Convert PostFinance CSV account exports into YNAB's file-based import format"
  homepage "https://github.com/infogrind/pftoynab"
  url "https://github.com/infogrind/pftoynab/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "bc2fceb95f8f0d987cc1a69fbb1d4e3f5cc4186928bd33482efa8886573a7bad"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pftoynab"
  end
end
