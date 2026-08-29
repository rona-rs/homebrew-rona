class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.30.0.tar.gz"
  sha256 "ab2789b9cfd70c498d36da4e8653586268449a7130c4ec337b60e21b762a01f0"
  license "Apache-2.0 OR MIT"
  version "2.30.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4fa1f41cebf97d5e5d2689e5f98e5d84449c7f1d1f087cd193fbb12a466a2b6b"
    sha256 cellar: :any_skip_relocation, sequoia:       "7ebfde8e331fe96338915f0852b084a22620d0e092d3fa5bce6842d667a67aaa"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ae818411aea1dfbae4e76c4daeb52f00f8464f1c9b77f0ca49767de3826c1634"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.30.0", shell_output("#{bin}/rona --version")
  end
end
