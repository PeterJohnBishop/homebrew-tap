class SymmetricalStream < Formula
  desc "Peer-to-peer file transfer over WebRTC"
  homepage "https://github.com/peterjohnbishop/symmetrical-stream"
  url "https://github.com/peterjohnbishop/symmetrical-stream/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c5d95b3c646813fdf6f3bc105aa7d260613fbfeaf6c6a54178d9b798d93e6c0a"
  license "MIT" 

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/symmetrical-stream", "--help"
  end
end
