class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.32.0.tar.gz"
  sha256 "10b9fa5e35808c2c13a25aa52bddb1983d84539914cbcaeae0855a7b9f702e30"
  license "Apache-2.0 OR MIT"
  version "2.32.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0522240b8baf926476c2b175142a28833abbbb4a2acc2bf17677539d76abd7e7"
    sha256 cellar: :any_skip_relocation, sequoia:       "a2ec7989027a7c5c97b1651b4205612547e29891fb3e712b0eb17f086eedb458"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9117a182c8704c0a48746e1f5e318c7473c6aeacc3d729ec5712ccabd13a36a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.32.0", shell_output("#{bin}/rona --version")
  end
end
