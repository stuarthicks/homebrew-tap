class Tstools < Formula
  homepage "https://github.com/stuarthicks/tstools"
  desc "fork of kynesim/tstools using cmake for easier building on modern osx"

  url "https://github.com/stuarthicks/tstools/archive/0.0.1.tar.gz"
  sha256 "b68bdd4828efe1d3dc5ea3cbfaf51183eec2c031e9374a9fb0cb84a792a743ff"
  version "0.0.1"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
