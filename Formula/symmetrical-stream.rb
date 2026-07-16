class SymmetricalStream < Formula
  desc "Peer-to-peer file transfer over WebRTC"
  homepage "https://github.com/peterjohnbishop/symmetrical-stream"
  url "https://github.com/peterjohnbishop/symmetrical-stream/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "9e4992ac803a4bd2884325e34262651e3605c1ca4b3f28c7121544c189f59e45"
  license "MIT" 

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/symmetrical-stream", "--help"
  end
end
