class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.18.3.tar.gz"
  sha256 "ec9f2270f959cda35980b95fbdff98ed75df32d50e7911a3e01d910cf23a7e48"
  license "Apache-2.0 OR MIT"
  version "2.18.3"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "cb4442f10179d5d8980cc45588a2e0430b03531c7d6e7271e13e1bac03dc3830"
    sha256 cellar: :any_skip_relocation, sequoia:       "89f67578eaf41a01162f3d91ae936bbf02bf8eb71a27ee8105e54293f9498c45"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1ec6e7e8af0347cd593900a5f877986e3a5de60b6afd31e314311a54aaeed6b6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.18.3", shell_output("#{bin}/rona --version")
  end
end
