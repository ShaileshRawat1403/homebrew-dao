class Dao < Formula
  desc "AI-powered software engineering assistant"
  homepage "https://github.com/ShaileshRawat1403/dao"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.1/dao-cli-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.1/dao-cli-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.1/dao-cli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "dao"
  end

  test do
    system "#{bin}/dao", "--version"
  end
end
