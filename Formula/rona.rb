class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.10.3.tar.gz"
  sha256 "1806707a209cc506e91168da2702e50b1d9fdb1c95db98437dd5c76b5d5427d2"
  license "Apache-2.0 OR MIT"
  version "2.10.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.10.3", shell_output("#{bin}/rona --version")
  end
end
