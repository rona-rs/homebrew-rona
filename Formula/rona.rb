class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.10.0.tar.gz"
  sha256 "cbb6340e902ee5d66738dd3ac93942d0a57f804dccf111c014cfcf7bd9f5d5b0"
  license "Apache-2.0 OR MIT"
  version "2.10.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.10.0", shell_output("#{bin}/rona --version")
  end
end
