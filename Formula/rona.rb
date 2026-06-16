class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.24.0.tar.gz"
  sha256 "f34c3bf489f2157a64643933783a74c64e87f25a699fbe4463cc52ae8e4b0a21"
  license "Apache-2.0 OR MIT"
  version "2.24.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0a805bb09e1102100b514a02d5ed4f819a47b0dc31d3f722890c2faefd06c531"
    sha256 cellar: :any_skip_relocation, sequoia:       "234a773ad406c9768445095056ae73fb66010191527494920fca2ec3dbe2b0e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a443d255e64b44e48d1610ea222af519cbd3f4f1bcf21edaf6a065820a3f6596"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.24.0", shell_output("#{bin}/rona --version")
  end
end
