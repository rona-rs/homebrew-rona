class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.2.tar.gz"
  sha256 "5db14b66061add45c763d438ff662c30bb8997ec9c6c57ea04b8b67cd7ecd0ff"
  license "Apache-2.0 OR MIT"
  version "2.17.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.2", shell_output("#{bin}/rona --version")
  end
end
