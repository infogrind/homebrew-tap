class Pftoynab < Formula
  include Language::Python::Virtualenv

  desc "Convert PostFinance CSV account exports into YNAB's file-based import format"
  homepage "https://github.com/infogrind/pftoynab"
  url "https://github.com/infogrind/pftoynab/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "6f7ec7da65ab2071e365c264b204b07eca907c68bfe0b490d9c0dd314913d7b6"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pftoynab"
  end
end
