class Muno < Formula
  desc "Multi-repository UNified Orchestration - Manage multiple git repositories with monorepo-like convenience"
  homepage "https://github.com/taokim/muno"
  version "0.6.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taokim/muno/releases/download/v0.6.0/repo-claude_Darwin_arm64.tar.gz"
      sha256 "5fc14b4416e0139352917c0fd5b8b9dae8acfaef659253a2c47845736662bc9d"
    else
      url "https://github.com/taokim/muno/releases/download/v0.6.0/repo-claude_Darwin_x86_64.tar.gz"
      sha256 "f48a5dbd6441fd5527bbce580f4a97eebf83c482e3f34b97257740295ba6c8f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/taokim/muno/releases/download/v0.6.0/repo-claude_Linux_arm64.tar.gz"
      sha256 "0e3bbf4d51cbdd2106062ab70049721cc4fc55e5a1a5df6c9ac82b83978f1b15"
    else
      url "https://github.com/taokim/muno/releases/download/v0.6.0/repo-claude_Linux_x86_64.tar.gz"
      sha256 "b4bd0357a159ae278a2322f79a4453c5da4caddd94ad71e2073e4bf63836cd05"
    end
  end

  def install
    # The binary is still named 'rc' in the v0.6.0 release
    # We'll install it as 'muno' for consistency with the new branding
    bin.install "rc" => "muno"
  end

  test do
    system "#{bin}/muno", "--version"
  end
end