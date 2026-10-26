class Pftoynab < Formula
  include Language::Python::Virtualenv

  desc "Convert PostFinance CSV account exports into YNAB's file-based import format"
  homepage "https://github.com/infogrind/pftoynab"
  url "https://github.com/infogrind/pftoynab/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "1afbc7d0326308bbd37fd7b6263c92f48727784e5ef3d003f035030c6e77b46f"
  license "MIT"

  depends_on "python@3.13"

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/08/72/fc01563df95c189a9f65850096bdc205bc2fe37da6c740cd64afaf18d07e/tomlkit-0.15.2.tar.gz"
    sha256 "83e32755ba1d20d9340bd069ee97e9f6232ba2346b63ffcba425de01f7e327a6"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pftoynab"
  end
end
