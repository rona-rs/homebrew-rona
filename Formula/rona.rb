class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.1.tar.gz"
  sha256 "b6d1b137a459a33cd33a3a5a39e88f3306fed5158709f71c3c5e20099a2a3ccd"
  license "Apache-2.0 OR MIT"
  version "2.17.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.1", shell_output("#{bin}/rona --version")
  end
end
