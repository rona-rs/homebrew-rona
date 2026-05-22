class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.23.0.tar.gz"
  sha256 "7a4bbc0be74e13c7b0257eeb134b84f76e77976251adfce4e3efd0f467f76beb"
  license "Apache-2.0 OR MIT"
  version "2.23.0"

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
    assert_match "rona 2.23.0", shell_output("#{bin}/rona --version")
  end
end
