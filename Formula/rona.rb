class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.27.0.tar.gz"
  sha256 "c1a13cd266a36c10dda522a7729ac039c054fa515e65807364a1354dfce09f63"
  license "Apache-2.0 OR MIT"
  version "2.27.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fb9d422685e922a0d21f22a5830351c4182d6c338680a41bdee71fa8a9aa74bc"
    sha256 cellar: :any_skip_relocation, sequoia:       "44cf14f6e6e458f1e377635942bf8934da6225f29433638034cab9bbb18e246b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c2fb5cf931c4a8e2a9210e2e54393dc4857dbee343de0e80c436b37778bf29e0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.27.0", shell_output("#{bin}/rona --version")
  end
end
