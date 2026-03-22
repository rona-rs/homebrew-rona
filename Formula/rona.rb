class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.18.3.tar.gz"
  sha256 "ef3ca64087d56d74196338b0af90e83e42dd4f5d91cb0827f5df18a90c6f7fb4"
  license "Apache-2.0 OR MIT"
  version "2.18.3"

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
    assert_match "rona 2.18.3", shell_output("#{bin}/rona --version")
  end
end
