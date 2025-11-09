class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.10.4.tar.gz"
  sha256 "cd206995298fc00632aa38ef6cb43ed611e498cfc20cfc8a917430de1b268bfd"
  license "Apache-2.0 OR MIT"
  version "2.10.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.10.4", shell_output("#{bin}/rona --version")
  end
end
