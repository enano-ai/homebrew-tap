class Enano < Formula
  desc "Local fund-docs obligation review - the Amendize /playground engine in your terminal"
  homepage "https://amendize.com"
  url "https://registry.npmjs.org/enano/-/enano-0.1.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enano --version")
  end
end
