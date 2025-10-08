class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.10.2.tar.gz"
  sha256 "9c75b4b8fad3abd6c65acfd453d2132ab1aa604a24cb7d6a9cdb7bcc55feffd6"
  license "Apache-2.0 OR MIT"
  version "2.10.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.10.2", shell_output("#{bin}/rona --version")
  end
end
