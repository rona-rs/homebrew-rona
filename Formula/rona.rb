class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.23.1.tar.gz"
  sha256 "baf7b660bbc6fb1b70b9d4fb33e6db6e278d8cb822c38e90eae32bab6fc7f3f4"
  license "Apache-2.0 OR MIT"
  version "2.23.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c22924bbee891f23beefe4aec68aa238cc81087ec7f2e321074a9ff56e85d169"
    sha256 cellar: :any_skip_relocation, sequoia:       "d7573f29fe477269666d2333e7a08fc715a5721ac0d9bfd68ab06dda741f6ad2"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3444e158702228958672dc20d4bc482e814b3791db21c0da5fbd54ee24a1ff16"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.23.1", shell_output("#{bin}/rona --version")
  end
end
