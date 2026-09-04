class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.33.0.tar.gz"
  sha256 "c7148b18d6f77cc920a13589d4d9b0d04c7971aabe19a1b84adc2c179be43d9b"
  license "Apache-2.0 OR MIT"
  version "2.33.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9b429801e5e5ddb876b02567100dbd4a753f68741ee4a7a96e0332c4d7d1ab09"
    sha256 cellar: :any_skip_relocation, sequoia:       "557a5646119c32169e1942f806269d528d4a7011ac71da7574d1bc0f0ce2bf74"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "07ef63d26180bf49a2909da657c07ae707970153a2aaf89ad1a26c26b7f32bff"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.33.0", shell_output("#{bin}/rona --version")
  end
end
