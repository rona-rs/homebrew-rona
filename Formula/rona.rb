class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.15.0.tar.gz"
  sha256 "25050f73d67c5def890e7a274e5be331ae1312099060917728dda471ecff0cbe"
  license "Apache-2.0 OR MIT"
  version "2.15.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.15.0", shell_output("#{bin}/rona --version")
  end
end
