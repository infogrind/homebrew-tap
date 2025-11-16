class Massrename < Formula
  include Language::Python::Virtualenv

  desc "Tool to mass-rename files using regular expressions"
  homepage "https://github.com/infogrind/massrename"
  url "https://github.com/infogrind/massrename/archive/refs/tags/v1.6.tar.gz"
  sha256 "522c19ec15b9a6f05ea1e43cd18ac5112eee4af61ea393405da6d9a1086c4204"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"massrename", :exist?
  end
end
