class Tokmizer < Formula
  desc "Cuts the tokens your AI coding agent burns on command output"
  homepage "https://tokmizer.com"
  url "https://registry.npmjs.org/@tokmizer/plugin/-/plugin-0.5.2.tgz"
  sha256 "a7dfb2677d1c11c377384ba0b08bd1a2cfd0ac39b51b348453b42748fa0a7d28"
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
