class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "ecb4fcc683de69f26bd538d19d88210ce05bf02649f868c864ecdab468eaf1a5"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"pythonformula"
    assert_match "usage: pythonformula",
      shell_output("#{bin}/pythonformula --help")
  end
end
