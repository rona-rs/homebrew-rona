class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.7.tar.gz"
  sha256 "b427f3d65c6a4beeeb4eb685ca392ad54b2f16ef262ff56cea2a194b0d929347"
  license "Apache-2.0 OR MIT"
  version "2.17.7"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1fcd161e1c4dd7ff24d19c83d7bd167dc72595e2efc244d19cda9cd4cc9ffccb"
    sha256 cellar: :any_skip_relocation, sequoia:       "513401bf28528213fb011023d9423654b09b09843a463492d6bfb9a7e3483db7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f20c2b1d36bd9a868c80b31738c860eb722259711904f21c44d3ac346b2485bb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.7", shell_output("#{bin}/rona --version")
  end
end
