class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.28.0.tar.gz"
  sha256 "19f8e80bdc54457461a075cf5dd926d6e6b552b9dae3b7ca20727b3ae6be6024"
  license "Apache-2.0 OR MIT"
  version "2.28.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9e563c5b33cca882030318006754961f67cf407658696ce22f1f6cb2eb940786"
    sha256 cellar: :any_skip_relocation, sequoia:       "7730ca6c4a922dc47ed54161abfb0ac048ff6cb9f72633fd4be28e3a07735b33"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d5c3cfc2a87613ed320d618ef38e7313a329c587193646ac52cc723ab4e9d190"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.28.0", shell_output("#{bin}/rona --version")
  end
end
