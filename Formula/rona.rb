class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.29.0.tar.gz"
  sha256 "935babf8547a41a85d0b2c02448256fa89885acd526103a24a973fce071efc74"
  license "Apache-2.0 OR MIT"
  version "2.29.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: ""
    sha256 cellar: :any_skip_relocation, sequoia:       ""
    sha256 cellar: :any_skip_relocation, x86_64_linux:  ""
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.29.0", shell_output("#{bin}/rona --version")
  end
end
