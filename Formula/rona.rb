class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.22.0.tar.gz"
  sha256 "d86b58a5d002adb4430358f552a6f8e26dced489192db635273389ff16dd07ca"
  license "Apache-2.0 OR MIT"
  version "2.22.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3bc87176773e06468b8191cc4d1134f0815ba7db455c735831d4a23697251f61"
    sha256 cellar: :any_skip_relocation, sequoia:       "79a9b626a17b55b1900fac98023723ccb93942e8d10fff1a06aa90c064655627"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e27a6b2069ed086c468761129418be81637885f124511ac9d7e8063e4195689c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.22.0", shell_output("#{bin}/rona --version")
  end
end
