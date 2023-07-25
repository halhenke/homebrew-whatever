class ShellGpt < Formula
  include Language::Python::Virtualenv

  desc "Shell interface for GPT-3"
  homepage "https://github.com/TheR1D/shell_gpt"
  # url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/v0.1.0.tar.gz"
  url "https://github.com/TheR1D/shell_gpt/releases/download/0.9.4/shell_gpt-0.9.4.tar.gz"
  sha256 "478ae1013b8cd152ff379f9d5dfdebf5b176fc0544710841d89e0a627c5d1db9"
  # sha256 "your_sha256_here"
  license "MIT"

  depends_on "python@3.11"
#   depends_on "python@3.9"

  # resource "requests" do
  #   url "https://files.pythonhosted.org/packages/29/c1/24814557f1d22c56d50280771a17307e6bf87b70727d975fd6b2ce6b014a/requests-2.25.1.tar.gz"
  #   sha256 "c210084e36a42ae6b9219e00e48287def368a26d03a048ddad7bfee44f75871e"
  # end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/70/8e/0e2d847013cb52cd35b38c009bb167a1a26b2ce6cd6965bf26b47bc0bf44/requests-2.31.0-py3-none-any.whl"
    sha256 "58cd2187c01e70e6e26505bca751777aa9f2ee0b7f4300988b709f44e013003f"
  end


  resource "typer" do
    url "https://files.pythonhosted.org/packages/bf/0e/c68adf10adda05f28a6ed7b9f4cd7b8e07f641b44af88ba72d9c89e4de7a/typer-0.9.0-py3-none-any.whl"
    sha256 "5d96d986a21493606a358cae4461bd8cdf83cbf33a5aa950ae629ca3b51467ee"
  end


  resource "click" do
    url "https://files.pythonhosted.org/packages/1a/70/e63223f8116931d365993d4a6b7ef653a4d920b41d03de7c59499962821f/click-8.1.6-py3-none-any.whl"
    sha256 "fa244bb30b3b5ee2cae3da8f55c9e5e0c0e86093306301fb418eb9dc40fbded5"
  end


  resource "rich" do
    url "https://files.pythonhosted.org/packages/fc/1e/482e5eec0b89b593e81d78f819a9412849814e22225842b598908e7ac560/rich-13.4.2-py3-none-any.whl"
    sha256 "8f87bc7ee54675732fa66a05ebfe489e27264caeeff3728c945d25971b6485ec"
  end


  resource "distro" do
    url "https://files.pythonhosted.org/packages/f4/2c/c90a3adaf0ddb70afe193f5ebfb539612af57cffe677c3126be533df3098/distro-1.8.0-py3-none-any.whl"
    sha256 "99522ca3e365cac527b44bde033f64c6945d90eb9f769703caaec52b09bbd3ff"
  end

  # Add other dependencies as needed

  def install
    virtualenv_install_with_resources
  end

  test do
    # Write a test for your application here
  end
end
