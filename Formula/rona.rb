class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.20.0.tar.gz"
  sha256 "ac9d43f4e27b0bb3fa0b74f6964ee1608f33105900a4e1b91f7d27b601127acf"
  license "Apache-2.0 OR MIT"
  version "2.20.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "619edf247ab57301a5ac43f5bf1a966c10aa5d6353c88d7eaf8da11f1878d0f2"
    sha256 cellar: :any_skip_relocation, sequoia:       "4a512fa147bfd40b60b49411b10af4743bb21a6534cdf065b4bfed86a56a745a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "889d62961080d5fbd23f8914fe022c4654d8bebdff71e541c66c295342914970"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.20.0", shell_output("#{bin}/rona --version")
  end
end
