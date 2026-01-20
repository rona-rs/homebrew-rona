class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.0.tar.gz"
  sha256 "1a04a04190dba9d6d5babb70db7d63b01ca0553fc289d2572f8afc7cc32524b4"
  license "Apache-2.0 OR MIT"
  version "2.17.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.0", shell_output("#{bin}/rona --version")
  end
end
