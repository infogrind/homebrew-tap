class Massrename < Formula
  include Language::Python::Virtualenv

  desc "Tool to mass-rename files using regular expressions"
  homepage "https://github.com/infogrind/massrename"
  url "https://github.com/infogrind/massrename/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "0f3494f66d8c0a0e75a99addef66ecf4ab331d9d55735adc067e7c0203a00e0e"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"massrename", :exist?
  end
end
