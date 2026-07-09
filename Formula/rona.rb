class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.27.1.tar.gz"
  sha256 "64c71c7c254450089cc4ca1bf57f0df1cb043b1729353133aceda22eb48bd9f7"
  license "Apache-2.0 OR MIT"
  version "2.27.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ed9cb627b6c16d4aa6f1834efd8e1d1f2104944adb1f4d8298375084435ae4d9"
    sha256 cellar: :any_skip_relocation, sequoia:       "2827aa667004e69e4258a182b5e81b8067d40b034890dc9f603cd565db7c8027"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ae7006244a8c66986e95e8a3489690a0ff803caba1c7663856d2239e69fa43af"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.27.1", shell_output("#{bin}/rona --version")
  end
end
