class Tokmizer < Formula
  desc "Cuts the tokens your AI coding agent burns on command output"
  homepage "https://tokmizer.com"
  url "https://registry.npmjs.org/@tokmizer/plugin/-/plugin-0.9.29.tgz"
  sha256 "d1f3d40f3ee6a688949d254521efbe61c3ed2a5fd694b6894e74726dda0a1073"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Usage: tkr", shell_output("#{bin}/tkr help")
  end
end
