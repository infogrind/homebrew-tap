class Taxcalc < Formula
  include Language::Python::Virtualenv

  desc "Estimate Swiss income and wealth taxes (Kanton Zürich + direkte Bundessteuer)"
  homepage "https://github.com/infogrind/taxcalc"
  url "https://github.com/infogrind/taxcalc/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1519177ed15c136a9665fece682aebda02e49982e1d392e2b7f57bdedfdb3f55"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"taxcalc"
  end
end
