class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.3.tar.gz"
  sha256 "818c98f9aa18569b261a5fb9a336fa7369e75ac162c4d76b14b399547580f033"
  license "Apache-2.0 OR MIT"
  version "2.17.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.3", shell_output("#{bin}/rona --version")
  end
end
