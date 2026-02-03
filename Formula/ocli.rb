class Ocli < Formula
  desc "🦉 AI coding assistant with self-improvement and LCARS styling"
  homepage "https://github.com/wiseowltechnet/ollama-ocli"
  url "https://github.com/wiseowltechnet/ollama-ocli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eca03aa7d73eb2472736b4ebef341648f6f1e188dfe128475863fa8741ba1bc8"
  license "MIT"
  head "https://github.com/wiseowltechnet/ollama-ocli.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "OCLI v0.2.0", shell_output("#{bin}/ocli --version")
  end
end
