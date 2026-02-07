class Dao < Formula
  desc "AI-powered software engineering assistant"
  homepage "https://github.com/ShaileshRawat1403/dao"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.2/dao-cli-aarch64-apple-darwin.tar.xz"
    sha256 "6aef09b4d896f64aea05c1d3c2db9ab4d495d60db746a7fe6f03d63c0e4a9036"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.2/dao-cli-x86_64-apple-darwin.tar.xz"
    sha256 "545b5d837370c2ffddce539dc672a3aac2b91b3151c6617ef16ec6bab23dc389"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ShaileshRawat1403/dao/releases/download/v0.1.2/dao-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "4d33901e32f51af869447ade4e38b8abe556c53fe3c20f1630cfd1b577340a74"
  end

  def install
    bin.install "dao"
  end

  test do
    system "#{bin}/dao", "--version"
  end
end
