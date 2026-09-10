class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.35.1.tar.gz"
  sha256 "7a21f927bfd762a5c79e6c7ae49fb92f86f170f53a2c772fd5a0e3fb6145ada5"
  license "Apache-2.0 OR MIT"
  version "2.35.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "04e4f0e2610129bae648872b278e8a63329bbc9e1a12b25fa4146d809d3052b0"
    sha256 cellar: :any_skip_relocation, sequoia:       "4d3add4cae805c1dd542e2c718dac631b89e7ea879491dca2aeade5dda548a3b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "75255d1e2607f2733a8a9b55e7ec848c3ec26bb8fcb669f960d0b7e1cd3b3f05"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.35.1", shell_output("#{bin}/rona --version")
  end
end
