class Tstools < Formula
  homepage "https://github.com/stuarthicks/tstools"

  url "https://github.com/stuarthicks/tstools/archive/0.0.3.tar.gz"
  sha256 "7f3f080bbbfc96f6da873dd065775fba2f749ca92a5e54760989a4515f74f120"
  version "0.0.3"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
