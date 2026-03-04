class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.18.1.tar.gz"
  sha256 "4d65acb3bb13c278f7dafc553aac1d1a94e9d43d11a56fecf3068ed35bdb8629"
  license "Apache-2.0 OR MIT"
  version "2.18.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "742bb84cc403d3c7d4501e14208de081161345c1088e059e4f81ac2d3cfc8bb7"
    sha256 cellar: :any_skip_relocation, sequoia:       "5118474076f8c23ccb1fcf500a91db3a12abbf47e20b28e268698eb72f666e9e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6d5b2d14d6980340435d86e48529faf064d46cc6a49e201e50ab9f54734bac6a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.18.1", shell_output("#{bin}/rona --version")
  end
end
