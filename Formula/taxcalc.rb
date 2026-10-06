class Taxcalc < Formula
  include Language::Python::Virtualenv

  desc "Estimate Swiss income and wealth taxes (Kanton Zürich + direkte Bundessteuer)"
  homepage "https://github.com/infogrind/taxcalc"
  url "https://github.com/infogrind/taxcalc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b6df735e7e7aebfccac3b7f3c4177f98796123e673d3671fb96f06aa52420fd1"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"taxcalc"
  end
end
