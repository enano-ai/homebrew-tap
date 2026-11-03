class Enano < Formula
  include Language::Python::Virtualenv
  desc "Explorable nano models for your second brain: pull versioned bundles, scan deterministically"
  homepage "https://enano.ai"
  url "https://files.pythonhosted.org/packages/36/db/5762f14af1f052c29040789065a9158be4fdb61db6dda54432cd06da75dd/enano-0.2.0.tar.gz"
  sha256 "2e4bbd7724cf9593888e89c3acd478283f91d70214b1c17c5d4bc98523c232d2"
  license :cannot_represent

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enano --version")
  end
end
