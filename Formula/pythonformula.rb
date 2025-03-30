class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.01.tar.gz"
  sha256 "be97968a50b9e0bb1ebb38164c8c69d5bfcd6b0680d69f659633f7c3c1283916"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pythonformula"
    assert_match "",
      shell_output("echo 'version = 1' | #{bin}/pythonformula 2>&1")
  end
end
