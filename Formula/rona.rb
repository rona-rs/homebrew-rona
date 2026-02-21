class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.8.tar.gz"
  sha256 "2dd5950b715616e1eab054abbc3b5d6e777047cf5bee700a1936cc534ce5a798"
  license "Apache-2.0 OR MIT"
  version "2.17.8"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5f2ab8e91cf9e867a16836438cb201132753f394383b8fc3f1b35472f2bd0626"
    sha256 cellar: :any_skip_relocation, sequoia:       "6de5cbcc28efdc6721e5d69a01876670217b622040a3e60880806ba7ac1b46fb"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e8179c3f3237192c41f1c640c689d972b9a77597c1f3d7bce77f1882931e0bd7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.8", shell_output("#{bin}/rona --version")
  end
end
