# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TlsCertInfo < Formula
  desc "CLI for viewing basic TLS (SSL) Certificate information"
  homepage "https://github.com/stuarthicks/tls_cert_info"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/stuarthicks/tls_cert_info/releases/download/v0.2.0/tls_cert_info_Darwin_x86_64.tar.gz"
      sha256 "8898702b2e37a59ae9bbf43d54fba8d24fee7c5314c4c3bee28e325236a62ccf"

      def install
        bin.install "tls_cert_info"
      end
    end
    on_arm do
      url "https://github.com/stuarthicks/tls_cert_info/releases/download/v0.2.0/tls_cert_info_Darwin_arm64.tar.gz"
      sha256 "f3c4312aa0afe4628edabccd3171793d07a77cd84b60de719d9ed4b6a6cb4b3d"

      def install
        bin.install "tls_cert_info"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/tls_cert_info/releases/download/v0.2.0/tls_cert_info_Linux_x86_64.tar.gz"
        sha256 "cd64623835feaf0c1b03b8f51f87b747bea4c4051d16722ef47f04b197522d92"

        def install
          bin.install "tls_cert_info"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/tls_cert_info/releases/download/v0.2.0/tls_cert_info_Linux_arm64.tar.gz"
        sha256 "3390af1f3f0c3e34886b5c8f5d4aaa573126e7e87d0f891eea4c37ac8d0b71b2"

        def install
          bin.install "tls_cert_info"
        end
      end
    end
  end

  test do
    system "#{bin}/tls_cert_info -h"
  end
end
