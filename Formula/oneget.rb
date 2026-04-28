class Oneget < Formula
  desc "CLI for 1get link shortening service"
  homepage "https://github.com/1get/cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1get/cli/releases/download/v0.1.3/1get-0.1.3-macos-aarch64.tar.gz"
      sha256 "PASTE_MACOS_ARM64_SHA"
    else
      url "https://github.com/1get/cli/releases/download/v0.1.3/1get-0.1.3-macos-x86_64.tar.gz"
      sha256 "PASTE_MACOS_X64_SHA"
    end
  end

  on_linux do
    url "https://github.com/1get/cli/releases/download/v0.1.3/1get-0.1.3-linux-x86_64.tar.gz"
    sha256 "PASTE_LINUX_X64_SHA"
  end

  def install
    bin.install "1get"
    bin.install_symlink "1get" => "oneget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/1get --version")
  end
end
