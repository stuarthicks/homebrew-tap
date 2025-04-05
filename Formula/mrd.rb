# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mrd < Formula
  desc "Decodes the primordial soup of video DRM headers"
  homepage "https://github.com/stuarthicks/mrd"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.3/mrd_Darwin_x86_64.tar.gz"
      sha256 "4963b5bf217c483c8c45fd710a02144ad019d79d93e3073e36b9365615832f9d"

      def install
        bin.install "mrd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stuarthicks/mrd/releases/download/v1.0.3/mrd_Darwin_arm64.tar.gz"
      sha256 "447da01d7004b87025ace2146eac720df040bef9f901184e9461d6ff10dad430"

      def install
        bin.install "mrd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.3/mrd_Linux_x86_64.tar.gz"
        sha256 "fbc22f3236d20f74447280a16593785465f7cc2f2be550af18b7e108ce4c6005"

        def install
          bin.install "mrd"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/mrd/releases/download/v1.0.3/mrd_Linux_arm64.tar.gz"
        sha256 "357e1c0ec18c9c9f0dc041ef4874efd01233ae279e1109a654736628de8867df"

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
