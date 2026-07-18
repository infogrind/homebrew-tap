class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "7e813bf76d0bd5a9876418e52977c19e6bdc828d685a131f70f5dfcd9a254e71"
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
