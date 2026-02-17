class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.4.tar.gz"
  sha256 "e24676d03df9f166827631e196ea8a3ec3c3e8fc96995fa19f839147baa1f9ae"
  license "Apache-2.0 OR MIT"
  version "2.17.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.4", shell_output("#{bin}/rona --version")
  end
end
