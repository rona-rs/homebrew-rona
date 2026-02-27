class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.18.0.tar.gz"
  sha256 "567e44a82905dee15982d6bacf2f4a6ade0cb44583bc1db926024c005c89e77b"
  license "Apache-2.0 OR MIT"
  version "2.18.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6b3e733902e525c138f0ce86f4d75a7476c35fa23651a04006af443ee6093d2b"
    sha256 cellar: :any_skip_relocation, sequoia:       "68f7b5bd5ff327b5331adc335cc14d5155a67fa0c78b3f56745142672e1ad4bd"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ca861c2e13a69574e5e35690da42b7313debd998cefb0d93caab8df780587026"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.18.0", shell_output("#{bin}/rona --version")
  end
end
