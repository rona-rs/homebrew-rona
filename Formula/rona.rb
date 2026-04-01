class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.21.0.tar.gz"
  sha256 "fcc9e46a5179d818948f2386b97d30fb7496664158f88011f459d0b2d7da2621"
  license "Apache-2.0 OR MIT"
  version "2.21.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3c882764cbf2888fa5766f7ccf7a64f6ae735ce5aca2ecc9eefcd4a86fd3685c"
    sha256 cellar: :any_skip_relocation, sequoia:       "2015b0b2e494c41face126fbb926f83317422f88ce55de673418afb026ed1621"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8452805792e2c177eee7986f24016e6ac2a837ef118a74d2e66596e7bf19ae72"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.21.0", shell_output("#{bin}/rona --version")
  end
end
