class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.13.1.tar.gz"
  sha256 "eb386186fa761ac10094284cf33eb59921665bd582a1e35aa40ecaa9d86e73c7"
  license "Apache-2.0 OR MIT"
  version "2.13.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.13.1", shell_output("#{bin}/rona --version")
  end
end
