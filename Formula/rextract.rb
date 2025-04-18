# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rextract < Formula
  desc "Simple shell regex capture extractor"
  homepage "https://github.com/stuarthicks/rextract"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stuarthicks/rextract/releases/download/v0.0.6/rextract_Darwin_x86_64.tar.gz"
      sha256 "cc5aa2d4363134b0ce0b5c5f56c8c9f467c4fc8039eb3385607e9d472e7115fb"

      def install
        bin.install "rextract"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stuarthicks/rextract/releases/download/v0.0.6/rextract_Darwin_arm64.tar.gz"
      sha256 "c0054825b62146b02783a6c402da4bd7f65062299c270bd5651e08e3b3fea2dd"

      def install
        bin.install "rextract"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/rextract/releases/download/v0.0.6/rextract_Linux_x86_64.tar.gz"
        sha256 "4baaf5c307b0017f3a5eae0b204d777d94b040b54c35eab5be3b386fd5ac9d3c"

        def install
          bin.install "rextract"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/rextract/releases/download/v0.0.6/rextract_Linux_arm64.tar.gz"
        sha256 "4cf1db38a6cd54c332e1595a96c2983b9eeeea195383bc7c29f0f0e44f5fdc3e"

        def install
          bin.install "rextract"
        end
      end
    end
  end

  test do
    system "#{bin}/rextract -h"
  end
end
