class AwsSessionManagerPlugin < Formula
  desc "Official Amazon AWS session manager plugin"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  url "https://s3.amazonaws.com/session-manager-downloads/plugin/1.0.37.0/mac/sessionmanager-bundle.zip"
  version "1.0.37.0"
  sha256 "4c04afb88081a23984cea5ca9fe2060045f8f4c96785e2771585b797631b6f16"

  depends_on "awscli"

  def install
    bin.install "bin/session-manager-plugin"
    prefix.install %w[LICENSE VERSION]
  end

  test do
    system bin/"session-manager-plugin"
  end
end
