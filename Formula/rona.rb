class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.16.0.tar.gz"
  sha256 "9063f6fe178a04ac35954d13cccf8563abc5f4db584d854393e41cad8d76ebfb"
  license "Apache-2.0 OR MIT"
  version "2.16.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.16.0", shell_output("#{bin}/rona --version")
  end
end
