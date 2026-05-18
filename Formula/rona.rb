class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.22.2.tar.gz"
  sha256 "052cdc9bde48b00117bb2951deaa0b94c3ffafbb49e41296644d2e494285c3f2"
  license "Apache-2.0 OR MIT"
  version "2.22.2"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1163bdf7d4783685a9020b5ed57b0bf4eab434a026e010703c092b7ce38e6b95"
    sha256 cellar: :any_skip_relocation, sequoia:       "5f6aa9f1432dc75702619eda58210a0ea21d44c8adb119f0143330b231bec475"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "44ddec87d643fe9ecf10a20371c02b3a9f00a80d957a507082394d67494318a5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.22.2", shell_output("#{bin}/rona --version")
  end
end
