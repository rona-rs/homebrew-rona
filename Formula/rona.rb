class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.22.1.tar.gz"
  sha256 "4a27565dbdc65a4b9aaff9275e011d2176a134f93068e80330586ff61f70ef4b"
  license "Apache-2.0 OR MIT"
  version "2.22.1"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f090302175a8764d45b7987a8ab7a4a52eabb842519fae29617b02042c223593"
    sha256 cellar: :any_skip_relocation, sequoia:       "28b7857a1920cdd4ee18193ccad92c5ffe697b493f30a4b58d2967573bcb0b61"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e3fefea1a6561780156fde93e39acdf66ed59af29bd8fb1d15330599d87e19ea"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.22.1", shell_output("#{bin}/rona --version")
  end
end
