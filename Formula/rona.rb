class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.29.0.tar.gz"
  sha256 "935babf8547a41a85d0b2c02448256fa89885acd526103a24a973fce071efc74"
  license "Apache-2.0 OR MIT"
  version "2.29.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c2632a6fda060f264450415a895ac716e394b5bb65ad06387b64c6d02313340c"
    sha256 cellar: :any_skip_relocation, sequoia:       "d8ba743cd25be6fd2850a74ca7b9d7ae325cc33aead9a9f24d61da27ec0804de"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ff68208fdb87de28c50b25f89d7920f16073bde191f89b20f0325d55b1dd0a4b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.29.0", shell_output("#{bin}/rona --version")
  end
end
