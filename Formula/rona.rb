class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.23.2.tar.gz"
  sha256 "f44ca4d82d173995667f9e7cc30ad09691aa736737ec7f76c3b1c5c60de04067"
  license "Apache-2.0 OR MIT"
  version "2.23.2"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4f59e2f51d96f2d016088d2678db37f4a04a06e8651b22cfa5dc2d27a8d357c5"
    sha256 cellar: :any_skip_relocation, sequoia:       "f774f688c1421a3dd17e4984ce25cf93a6c5f7ab29fcaf243c9c419862a961de"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "dd09d29b402b6286933398122fc8d9b6c4a8bf9b26baaba1a8849b801eecd580"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.23.2", shell_output("#{bin}/rona --version")
  end
end
