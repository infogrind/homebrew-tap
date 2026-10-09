class Tomp4 < Formula
  include Language::Python::Virtualenv

  desc "Convert video files to MP4 with sensible ffmpeg settings"
  homepage "https://github.com/infogrind/tomp4"
  url "https://github.com/infogrind/tomp4/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f74a4e0d3050305820acf65c4efd20e9a65f67d70259c0349c4b6d1e12755d5f"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tomp4 --version")
    assert_match "no such file or directory", shell_output("#{bin}/tomp4 missing.avi 2>&1", 1)

    system formula_opt_bin("ffmpeg")/"ffmpeg", "-nostdin", "-v", "error",
           "-f", "lavfi", "-i", "testsrc=size=320x240:duration=1", "-c:v", "mpeg4", "test.avi"
    system bin/"tomp4", "test.avi"
    assert_path_exists testpath/"test.mp4"
  end
end
