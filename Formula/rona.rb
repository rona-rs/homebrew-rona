class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.6.tar.gz"
  sha256 "9d09427136eb4961bfd6249d9f8f27d7e9fa4cc9297a29108eff9147b3950065"
  license "Apache-2.0 OR MIT"
  version "2.17.6"

  bottle do
    root_url "https://github.com/rona-rs/rona/releases/download/v2.17.6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4ee39ea0f328f90c428c2c5d2e4e93e9f5717565f9be319f48aab874302744b0"
    sha256 cellar: :any_skip_relocation, sequoia:       "6adaf61ed49f2c9bbcb201854ccd42b103b7991130456678b9594aaf4379cb13"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4ce214130de1ae64eae27bcb12f25e580917d4c4a827b6fe41b6c8056ef106b9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.6", shell_output("#{bin}/rona --version")
  end
end
