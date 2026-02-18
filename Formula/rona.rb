class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.6.tar.gz"
  sha256 "9d09427136eb4961bfd6249d9f8f27d7e9fa4cc9297a29108eff9147b3950065"
  license "Apache-2.0 OR MIT"
  version "2.17.6"

  bottle do
    root_url "https://github.com/rona-rs/rona/releases/download/v2.17.6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5c2d1d1f9cd59ce15c7fb5aba3cbcfd62f86a09b5c0219258b178bb4d4fb1412"
    sha256 cellar: :any_skip_relocation, sequoia:       "9b33f4caca18e3137edf141b80c84ea593bec407848669bb952bf9264260edf9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4563cf49d4793c241750ec4657b8cdcc5a3c3c8fa2465ed8bdcd2456e8833e4c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.6", shell_output("#{bin}/rona --version")
  end
end
