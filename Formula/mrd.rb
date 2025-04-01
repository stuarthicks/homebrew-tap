# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mrd < Formula
  desc "Decodes the primordial soup of video DRM headers"
  homepage "https://github.com/stuarthicks/mrd"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.1/mrd_Darwin_x86_64.tar.gz"
      sha256 "87420b598c3274546b38af3b7bb46024479f85931b10f50e77cbfda280919b91"

      def install
        bin.install "mrd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.1/mrd_Darwin_arm64.tar.gz"
      sha256 "55ce89e38407a5df23663658ad5b61ae67350aa7bf03c352b1fb8b8eec51e9db"

      def install
        bin.install "mrd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.1/mrd_Linux_x86_64.tar.gz"
        sha256 "60441e17478fd71f721566e7fa9ffb4a73a656788d17d24909e64409f2903eab"

        def install
          bin.install "mrd"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.1/mrd_Linux_arm64.tar.gz"
        sha256 "11f39a1c1fc09a75951f1011e1796bab7636d96348a3e10adb70e640fac548f9"

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
