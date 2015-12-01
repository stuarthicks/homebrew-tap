class Tstools < Formula
  homepage "https://github.com/stuarthicks/tstools"

  url "https://github.com/stuarthicks/tstools/archive/0.0.3.tar.gz"
  sha256 "bab3ccf5398d64f35c69a7e7611af254bf96e6cb4af741641d89da2ac2327247"
  version "0.0.3"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
