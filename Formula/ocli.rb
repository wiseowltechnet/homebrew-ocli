class Ocli < Formula
  desc "🦉 AI coding assistant with self-improvement and LCARS styling"
  homepage "https://github.com/wiseowltechnet/ollama-ocli"
  url "https://github.com/wiseowltechnet/ollama-ocli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "46788faa52420c070dca612204c4626cf7dae25977c8e82151193c316a58c3ae"
  license "MIT"
  head "https://github.com/wiseowltechnet/ollama-ocli.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "OCLI v0.3.0", shell_output("#{bin}/ocli --version")
  end
end
