class Poethepoet < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "None"
  url "https://files.pythonhosted.org/packages/4e/7e/160d391368d359f7dd6dd647575499c395687beb4a6b2ebfbfbf8a20b817/poethepoet-0.49.0.tar.gz"
  sha256 "256b72c057b5f60341bbe09498212939e558341fac4ab59d0ce478aca04f0d2a"

  depends_on "python3"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
