class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "c4d6e7a9ae3824bbf7e9872429a1f73f349f0587077ab86db981e7d54181aaa1"
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
