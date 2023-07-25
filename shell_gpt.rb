class ShellGpt < Formula
  include Language::Python::Virtualenv

  desc "Shell interface for GPT-3"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "your_sha256_here"
  license "MIT"

  depends_on "python@3.11"
#   depends_on "python@3.9"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/29/c1/24814557f1d22c56d50280771a17307e6bf87b70727d975fd6b2ce6b014a/requests-2.25.1.tar.gz"
    sha256 "c210084e36a42ae6b9219e00e48287def368a26d03a048ddad7bfee44f75871e"
  end

  # Add other dependencies as needed

  def install
    virtualenv_install_with_resources
  end

  test do
    # Write a test for your application here
  end
end
