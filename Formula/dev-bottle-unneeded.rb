class DevBottleUnneeded < Formula
  desc "Git-Gerrit: Gerrit code review helper scripts"
  homepage "https://github.com/fbzhong/git-gerrit"
  url "https://github.com/fbzhong/git-gerrit/archive/v0.3.0.tar.gz"
  sha256 "433185315db3367fef82a7332c335c1c5e0b05dabf8d4fbeff9ecf6cc7e422eb"
  license "BSD-3-Clause"
  head "https://github.com/fbzhong/git-gerrit.git"

  depends_on "python@3.9"

  conflicts_with "git-gerrit", because: "both install `gerrit` and `git-gerrit` binaries"

  def install
    prefix.install "bin"
    bash_completion.install "completion/git-gerrit-completion.bash"
  end

  test do
    system "git", "init"
    system "git", "gerrit", "help"
  end
end
