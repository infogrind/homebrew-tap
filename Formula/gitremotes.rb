class Gitremotes < Formula
  desc "Shell script to list all remotes of a git repository"
  homepage "https://github.com/infogrind/gitremotes"
  url "https://github.com/infogrind/gitremotes/archive/v0.1.tar.gz"
  sha256 "af06aa470659b1fea2b59bbe9474c0a55b60a0424a21c66f94128082ca7e84d5"

  def install
    mv "gitremotes.sh", "gitremotes"
    bin.install "gitremotes"
  end

  test do
    assert_predicate bin/"gitremotes", :exist?
  end
end
