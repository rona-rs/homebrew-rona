class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.19.0.tar.gz"
  sha256 "39a3c5e7c2fe28bc45b771cfacdb0b10169b7218b320d83330e42cb0ac2f9ed6"
  license "Apache-2.0 OR MIT"
  version "2.19.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "88c17958a4a7a4f4b91e73aebc330a16b9505a8f814e0a24ac9e3206426d4af6"
    sha256 cellar: :any_skip_relocation, sequoia:       "e599c8948b2150d954e53f9b7a5df9ffd97e560e11f0f782cde20813279e4970"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "530611a90e5d650aa06539b3b34269c4ebb003c9c75677a022ddea39abd3f7ee"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.19.0", shell_output("#{bin}/rona --version")
  end
end
