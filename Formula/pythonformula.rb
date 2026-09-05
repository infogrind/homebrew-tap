class Pythonformula < Formula
  include Language::Python::Virtualenv

  desc "Convert a Python uv.lock file to a Homebrew formula dependency format"
  homepage "https://github.com/infogrind/pythonformula"
  url "https://github.com/infogrind/pythonformula/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "3e9d3b398cc9e2e760d10f300adc782d6726d0c85efb066ffdd4085fbb037be0"
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
