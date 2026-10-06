class Taxcalc < Formula
  include Language::Python::Virtualenv

  desc "Estimate Swiss income and wealth taxes (Kanton Zürich + direkte Bundessteuer)"
  homepage "https://github.com/infogrind/taxcalc"
  url "https://github.com/infogrind/taxcalc/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a4e5a8810bf87569c758f68272ac253c6d0699cbd7424c3951a9662e0080ab73"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"taxcalc"
  end
end
