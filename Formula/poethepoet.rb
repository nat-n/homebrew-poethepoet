class Poethepoet < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "https://github.com/nat-n/poethepoet"
  url "https://files.pythonhosted.org/packages/be/07/dfaed168414cf1e10f5c90860cdc29ffd871df80be81f3d7abd0451a4508/poethepoet-0.30.0.tar.gz"
  sha256 "9f7ccda2d6525616ce989ca8ef973739fd668f50bef0b9d3631421d504d9ae4a"

  depends_on "python3"

  resource "pastel" do
    url "https://files.pythonhosted.org/packages/76/f1/4594f5e0fcddb6953e5b8fe00da8c317b8b41b547e2b3ae2da7512943c62/pastel-0.2.1.tar.gz"
    sha256 "e6581ac04e973cac858828c6202c1e1e81fee1dc7de7683f3e1ffe0bfd8a573d"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
