class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.13.0.tar.gz"
  sha256 "fdf3a622577d6ef30e1c9a985a0d54737c28343772075e2fc50b44431ed50463"
  license "Apache-2.0 OR MIT"
  version "2.13.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.13.0", shell_output("#{bin}/rona --version")
  end
end
