class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.12.0.tar.gz"
  sha256 "11a00766b511dc49c363cdfa0c813faed0eb501f7074936c34a1f4258f4473d0"
  license "Apache-2.0 OR MIT"
  version "2.12.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.12.0", shell_output("#{bin}/rona --version")
  end
end
