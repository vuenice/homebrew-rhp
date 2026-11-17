class Rhp < Formula
  desc "Rust-Powered High-Performance PHP-Family Language and JIT Runtime"
  homepage "https://rhp.dev"
  version "0.2.0-alpha.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vuenice/rhp/releases/download/v0.2.0-alpha.1/rhp-v0.2.0-alpha.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e752896bf60bbc51807876bfdcd304805eb4e7e8f32a6930b611b84f497446dc"
  end

  # macOS support will be uncommented once Darwin binaries and checksums are published
  # if OS.mac? && Hardware::CPU.arm?
  #   url "https://github.com/vuenice/rhp/releases/download/v0.2.0-alpha.1/rhp-v0.2.0-alpha.1-aarch64-apple-darwin.tar.gz"
  #   sha256 "..."
  # elsif OS.mac? && Hardware::CPU.intel?
  #   url "https://github.com/vuenice/rhp/releases/download/v0.2.0-alpha.1/rhp-v0.2.0-alpha.1-x86_64-apple-darwin.tar.gz"
  #   sha256 "..."
  # end

  def install
    bin.install "rhp"
  end

  test do
    assert_match "rhp 0.2.0", shell_output("#{bin}/rhp --version")
  end
end
