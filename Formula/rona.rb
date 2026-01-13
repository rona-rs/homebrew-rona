class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.15.1.tar.gz"
  sha256 "32e393d4b200e6ca8a39a74924d1ada5319273bd43b487c4ceb1b879d2222ac6"
  license "Apache-2.0 OR MIT"
  version "2.15.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.15.1", shell_output("#{bin}/rona --version")
  end
end
