class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.22.3.tar.gz"
  sha256 "c94988d0d89d8f42b5e9b3772f12f665b69b9f25ae36d33b6fcd3febfe5c8679"
  license "Apache-2.0 OR MIT"
  version "2.22.3"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5fbb731f64ed74e25338939595b08189c02ea1d6ad81d53b514c1be8147e56f1"
    sha256 cellar: :any_skip_relocation, sequoia:       "7b4a36ee3caa0cd4696bbcc010487992435c00ecb07f197f8597171247bec31c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0e172320964eda24f37be088b507434617c25269cf071328a7c4c362861a4afa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.22.3", shell_output("#{bin}/rona --version")
  end
end
