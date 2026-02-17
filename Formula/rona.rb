class Rona < Formula
  desc "A powerful CLI tool to streamline your Git workflow"
  homepage "https://github.com/rona-rs/rona"
  url "https://github.com/rona-rs/rona/archive/refs/tags/v2.17.5.tar.gz"
  sha256 "cd90c59f68520a8e5d1ff56a46e8aec978437ab9365a7d6399f53dfb48224340"
  license "Apache-2.0 OR MIT"
  version "2.17.5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rona 2.17.5", shell_output("#{bin}/rona --version")
  end
end
