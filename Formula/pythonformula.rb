class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.0.tar.gz"
  sha256 "f5ebe5aad09b8c8b57ddcdd025203afd0d1cd1efa535def3ac7d5744bb1a5f8d"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_file_exists bin/"pythonformula"
    assert_match "",
      shell_output("echo 'version = 1' | #{bin}/pythonformula 2>&1")
  end
end
