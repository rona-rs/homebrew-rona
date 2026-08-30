class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.30.1.tar.gz"
  sha256 "64de657088f57219d7d1546d257d9cc628917204b23c37b784da61f3d4b90f55"
  license "Apache-2.0 OR MIT"
  version "2.30.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "31d85b99518fd94758cf392213e508940587030f36c5905f1738cb4fbb1dc3d7"
    sha256 cellar: :any_skip_relocation, sequoia:       "a6bfe7695f8f53f9ec2f0aa8712d0e7b0899f58e78504b434c17a889a59a0b72"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e055b947ed6551f958668c99854386c5358688a674ec1893ad37b94179daa686"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.30.1", shell_output("#{bin}/rona --version")
  end
end
