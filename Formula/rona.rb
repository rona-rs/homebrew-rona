class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.11.1.tar.gz"
  sha256 "ed68e7fb40cd4eb8f0716431cc607e24809f392b4384ec383346dde7f202880a"
  license "Apache-2.0 OR MIT"
  version "2.11.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.11.1", shell_output("#{bin}/rona --version")
  end
end
