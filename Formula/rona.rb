class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.11.0.tar.gz"
  sha256 "69351223b38232f00ef70dde99f7c5b62203acf5597cde4ff48251fad952a498"
  license "Apache-2.0 OR MIT"
  version "2.11.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.11.0", shell_output("#{bin}/rona --version")
  end
end
