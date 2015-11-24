class Tstools < Formula
  homepage "https://github.com/stuarthicks/tstools"
  desc "fork of kynesim/tstools using cmake for easier building on modern osx"

  url "https://github.com/stuarthicks/tstools/archive/0.0.2.tar.gz"
  sha256 "2ebf8bcecd561349edeedba771019e9582e45897e28f54804e25cb930c7a158c"
  version "0.0.2"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
