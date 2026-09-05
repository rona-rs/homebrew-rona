class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.34.0.tar.gz"
  sha256 "e831f5c16936b76af35aa322022affad6c38916f622a61b024a3256cfdc27d51"
  license "Apache-2.0 OR MIT"
  version "2.34.0"

  bottle do
    root_url "https://tomplanche.com/api/brew/track/rona"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6a3c54d9660118cbdff195960f649f93f2342b102d5b0c999309444f5fe53be2"
    sha256 cellar: :any_skip_relocation, sequoia:       "8bc2c39c292d9be30f742ea3b0cb9e31a65490b090f5510136a76a7437490e8f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f663731fc9bed494bac21e8aaba455178e8dbe88cc619381ca00c4e4b374d016"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.34.0", shell_output("#{bin}/rona --version")
  end
end
