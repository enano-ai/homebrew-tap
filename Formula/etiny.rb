class Etiny < Formula
  include Language::Python::Virtualenv
  desc "Elevation models for personal goals and pitch decks: pull bundles, scan deterministically"
  homepage "https://enano.ai"
  url "https://files.pythonhosted.org/packages/9b/ef/dc0221a3991615f971888b42954dab7bf6ef74f5ea7f7d611e9abd6ebc3b/etiny-0.1.0.tar.gz"
  sha256 "af6c7125282f39c7cc8500fdf5a461b2bd2d20ca885cf2ee8717ab77d6b372a8"
  license :cannot_represent

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/etiny --version")
  end
end
