class SvaForm < Formula
  include Language::Python::Virtualenv

  desc "Monthly SVA Zürich hourly payslips (Stundenlohnabrechnung) and year-end summary"
  homepage "https://github.com/infogrind/sva-form"
  url "https://github.com/infogrind/sva-form/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8ec93111e0d1d413124d13020d5b3566e207f6841b257cd927be949f623c6d97"
  license "MIT"

  depends_on "python@3.13"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "iso3166" do
    url "https://files.pythonhosted.org/packages/5c/11/b5023c736a185a88ebd0d38646af6f4d1b4c9b91f2ca84e08e5d2bc7ac3c/iso3166-2.1.1.tar.gz"
    sha256 "fcd551b8dda66b44e9f9e6d6bbbee3a1145a22447c0a556e5d0fb1ad1e491719"
  end

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/1f/ac/63d71aaedb59acbcdef491e6ca6469165e3771c9c74358204818fd9bc5a6/pypdf-6.19.0.tar.gz"
    sha256 "bbc43aca292369ccc6cbc8a921991ecf2538a3587ab5a116eff06c321d647155"
  end

  resource "python-stdnum" do
    url "https://files.pythonhosted.org/packages/15/7f/96c2b9de6024353177dc6139c33730d5ac25877bc33215515d6b95b84555/python_stdnum-2.2.tar.gz"
    sha256 "e95fcfa858a703d4a40130cb3eaac133c60d8808a7f3c98efeedac968c2479b9"
  end

  resource "qrbill" do
    url "https://files.pythonhosted.org/packages/6e/38/95a9069070161becc3a7018fc5ee4edbfb973a012b31d4801d20eb30e1d8/qrbill-1.2.0.tar.gz"
    sha256 "7a2e37940731890fea0f005189464ef5448382fbbee5e1e96bc2ddff86fc8bbe"
  end

  resource "qrcode" do
    url "https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz"
    sha256 "35c3f2a4172b33136ab9f6b3ef1c00260dd2f66f858f24d88418a015f446506c"
  end

  resource "svgwrite" do
    url "https://files.pythonhosted.org/packages/16/c1/263d4e93b543390d86d8eb4fc23d9ce8a8d6efd146f9427364109004fa9b/svgwrite-1.4.3.zip"
    sha256 "a8fbdfd4443302a6619a7f76bc937fc683daf2628d9b737c891ec08b8ce524c3"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_path_exists bin/"sva-form"
  end
end
