class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "6e21d253c10e05ee04aee86e8385f3b44a59ca058e3ad97edf4a8db3a8c26563"
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
