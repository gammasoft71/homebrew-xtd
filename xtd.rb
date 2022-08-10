class Xtd < Formula
  desc "Free open-source modern C++17 / C++20 framework to create console, forms (GUI like WinForms) and unit test applications on Microsoft Windows, Apple macOS and Linux."
  homepage "https://gammasoft71.wixsite.com/xtdpro"
  url "https://github.com/gammasoft71/xtd/archive/refs/tags/v0.1.0-beta.tar.gz"
  sha256 "2a161ba386d987c074a3a43ff9a138518fea8f5324f0f7c14104acb9171e249d"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "wxwidgets" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build", "--target", "install"
  end

  test do
    system "xtdc", "--version"
  end
end
