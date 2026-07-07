class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.26.0.tar.gz"
  sha256 "d074c5623747dac393f5d7b601e42386c18fd5bb8163b83165aef1b308dffdc9"
  license "Apache-2.0 OR MIT"
  version "2.26.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0db4045853ae500588192bb7a07d33df445c941737b3a6f91ca8dbc8174323c0"
    sha256 cellar: :any_skip_relocation, sequoia:       "50239c27163ec99be0d66f5383241cc1495d0ce98d687e389f02f33de9fb3501"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0c3f6d575065cb357cf908d5c4c4ff8c45ca04aadc46613bb2ebe2a6963844b9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.26.0", shell_output("#{bin}/rona --version")
  end
end
