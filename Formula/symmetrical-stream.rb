class SymmetricalStream < Formula
  desc "Peer-to-peer file transfer over WebRTC"
  homepage "https://github.com/peterjohnbishop/symmetrical-stream"
  url "https://github.com/peterjohnbishop/symmetrical-stream/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "e12d2a4a316a5605809dee1373d253601d8fa6424f46a11889a43bd66dd0244a"
  license "MIT" 

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/symmetrical-stream", "--help"
  end
end
