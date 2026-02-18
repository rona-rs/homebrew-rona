class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.5.tar.gz"
  sha256 "cd90c59f68520a8e5d1ff56a46e8aec978437ab9365a7d6399f53dfb48224340"
  license "Apache-2.0 OR MIT"
  version "2.17.5"

  bottle do
    root_url "https://github.com/rona-rs/rona/releases/download/v2.10.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "PLACEHOLDER_ARM64_SEQUOIA"
    sha256 cellar: :any_skip_relocation, sequoia:       "PLACEHOLDER_SEQUOIA"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "PLACEHOLDER_X86_64_LINUX"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.5", shell_output("#{bin}/rona --version")
  end
end
