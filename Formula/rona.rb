class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.22.3.tar.gz"
  sha256 "cbf0cbe4b37dda5875fe4a55cb5df23fd3f8f59024358d5be101cc55889aa6b6"
  license "Apache-2.0 OR MIT"
  version "2.22.3"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: ""
    sha256 cellar: :any_skip_relocation, sequoia:       ""
    sha256 cellar: :any_skip_relocation, x86_64_linux:  ""
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.22.3", shell_output("#{bin}/rona --version")
  end
end
