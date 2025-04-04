# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mrd < Formula
  desc "Decodes the primordial soup of video DRM headers"
  homepage "https://github.com/stuarthicks/mrd"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.2/mrd_Darwin_x86_64.tar.gz"
      sha256 "2bee42fd99d636ddb8af89b3a5e28455738e1eeddd6c8375bf3a113a971edd1b"

      def install
        bin.install "mrd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.2/mrd_Darwin_arm64.tar.gz"
      sha256 "969af8d3c2bfb93a286f425d56bafff2ba9820e37b134040cc1fd7a229b7a4ea"

      def install
        bin.install "mrd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.2/mrd_Linux_x86_64.tar.gz"
        sha256 "a8321596fb7294a3c1a763b28077020bf7a34fcecfb8507e23af7a5301f81478"

        def install
          bin.install "mrd"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.2/mrd_Linux_arm64.tar.gz"
        sha256 "31d4ae403fe7fc024bbe03416792fa575ff1a3ca462f4b7cbbd535c1ad0223e9"

        def install
          bin.install "mrd"
        end
      end
    end
  end

  test do
    system "#{bin}/mrd -h"
  end
end
