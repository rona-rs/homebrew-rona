class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.23.0.tar.gz"
  sha256 "7a4bbc0be74e13c7b0257eeb134b84f76e77976251adfce4e3efd0f467f76beb"
  license "Apache-2.0 OR MIT"
  version "2.23.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "896b2f8e1ac01f39bbf2536173e49ce098f9e24717181f02e990c42401247788"
    sha256 cellar: :any_skip_relocation, sequoia:       "ed2bd8d1d7e95e6e2cfab67b85b71c0aab25c57df5e8152913135b8dcd1f958e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "32d8935b7ed89c0ae6821d928c32bdf5e1c5ebda6f077f2c7e5063a21265b7b7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.23.0", shell_output("#{bin}/rona --version")
  end
end
