class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.25.0.tar.gz"
  sha256 "18d64557dc6a9362873a28fadfa79649d623a7b890f7ebf23ab5e472c5da99df"
  license "Apache-2.0 OR MIT"
  version "2.25.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "84cdd33afb743d3b6f966a19b4f8138c194e8b599edc36ba01b7c871e04ba148"
    sha256 cellar: :any_skip_relocation, sequoia:       "67899b58187b29410bfed08983de1df38614513da1ee95e8595d69ab88396395"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9f7d613603abc00f1e37da60ce27e1c1709b53cb1a2e1c8b45b58850745de682"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.25.0", shell_output("#{bin}/rona --version")
  end
end
