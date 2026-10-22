class Rhp < Formula
  desc "Rust-Powered High-Performance PHP-Family Language and JIT Runtime"
  homepage "https://rhp.dev"
  version "0.1.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vuenice/rhp/releases/download/alpha-v0.0.1/rhp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f2a0bae0befede9f54971215c7a891784edce362d40e3a086e73a33810c4aae5"
  end

  # macOS support will be uncommented once Darwin binaries and checksums are published
  # if OS.mac? && Hardware::CPU.arm?
  #   url "https://github.com/vuenice/rhp/releases/download/alpha-v0.0.1/rhp-v0.1.0-aarch64-apple-darwin.tar.gz"
  #   sha256 "..."
  # elsif OS.mac? && Hardware::CPU.intel?
  #   url "https://github.com/vuenice/rhp/releases/download/alpha-v0.0.1/rhp-v0.1.0-x86_64-apple-darwin.tar.gz"
  #   sha256 "..."
  # end

  def install
    bin.install "rhp"
  end

  test do
    assert_match "rhp #{version}", shell_output("#{bin}/rhp --version")
  end
end
