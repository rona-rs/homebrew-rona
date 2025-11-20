class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.12.1.tar.gz"
  sha256 "a70d77e9ba10df394b6fd84376d05f42568f0616fc481fa87ee40fc0fe91d217"
  license "Apache-2.0 OR MIT"
  version "2.12.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.12.1", shell_output("#{bin}/rona --version")
  end
end
