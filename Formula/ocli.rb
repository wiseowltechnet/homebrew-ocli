class Ocli < Formula
  desc "🦉 AI coding assistant with self-improvement and LCARS styling"
  homepage "https://github.com/wiseowltechnet/ollama-ocli"
  url "https://github.com/wiseowltechnet/ollama-ocli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "a3da9a100cea9941320b2f23346d219e45b0ce6fbecaacb36d9ad7f50f507023"
  license "MIT"
  head "https://github.com/wiseowltechnet/ollama-ocli.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "OCLI v0.2.1", shell_output("#{bin}/ocli --version")
  end
end
