class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.35.0.tar.gz"
  sha256 "9935134749cc7ee986a96f23c8e1f8a7a87452a73e8e3d663d8ccf36810f4115"
  license "Apache-2.0 OR MIT"
  version "2.35.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8cc65f2a1477857ede5540d2d3ef07ea785139854ce75b744a9431f4c6468258"
    sha256 cellar: :any_skip_relocation, sequoia:       "904f9b10f090a8289cdf499a65801e04246873ce16193c83b4e4c20498b9bd91"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5c7311c206a5c6eeaf41dcc3847d611bcaac1c409d9302989b11606e45810408"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.35.0", shell_output("#{bin}/rona --version")
  end
end
