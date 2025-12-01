class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.14.0.tar.gz"
  sha256 "e419ff4aaaa989609fb22388ec519c80bf07edf5c98558be19b2175fc4aabd89"
  license "Apache-2.0 OR MIT"
  version "2.14.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.14.0", shell_output("#{bin}/rona --version")
  end
end
