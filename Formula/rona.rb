class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.31.0.tar.gz"
  sha256 "486a0eb1ab2240ae2cd55da5aaeb6b045a60b6ba7554b999e821207bb9b79123"
  license "Apache-2.0 OR MIT"
  version "2.31.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d2939a8a6d6b3027323c34c9da7f9721814def8cc81804e2c60f7396f6143a19"
    sha256 cellar: :any_skip_relocation, sequoia:       "108b4ee5c2fa5969fa3296eacc621bc98750a8a270468158c3b823e5722fa150"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a4450cd5ad5736d1372cc518e86715305ffc72e8e5b6707d465e55b448ef958a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.31.0", shell_output("#{bin}/rona --version")
  end
end
