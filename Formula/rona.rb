class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.18.2.tar.gz"
  sha256 "58c90bb3759d355aa2ccf31ac3005e79f21373aa0dceb36d0dadfb51612f309a"
  license "Apache-2.0 OR MIT"
  version "2.18.2"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "82d6a55d244ba0f764cb66b0109ce8c4c28efe510d0e4fa8e94e0cccc01b275b"
    sha256 cellar: :any_skip_relocation, sequoia:       "dfa6e705892c373656f31ba3da71aef47f18d22dc0b362da9e1dc569c42e22fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "955ac272687ea3ad7606511e7da123a96bf4e0595f0757df6a5b08897a20a00e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.18.2", shell_output("#{bin}/rona --version")
  end
end
