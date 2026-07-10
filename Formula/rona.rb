class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.27.2.tar.gz"
  sha256 "50a6ca5ce53ec47da7f4ebe5f3c7453a45aa7cc6329b173484e4ab88bbff499c"
  license "Apache-2.0 OR MIT"
  version "2.27.2"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e38af2682c620d979a314f4407d924ee1757143e9222f4433ab7fee99e2d613c"
    sha256 cellar: :any_skip_relocation, sequoia:       "3ed91d4baab89e251dfc59d513be95966cf178e8f46bf9508a6837f276b69589"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "756c73999266a941df3e69a7297481e8d3a41a246de142f925351feb03828032"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.27.2", shell_output("#{bin}/rona --version")
  end
end
