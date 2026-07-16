class SymmetricalStream < Formula
  desc "Peer-to-peer file transfer over WebRTC"
  homepage "https://github.com/peterjohnbishop/symmetrical-stream"
  url "https://github.com/peterjohnbishop/symmetrical-stream/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "e9bac31b3e1df75b2ebc01b72753cb28a7b2aeb8277976be43e03718f6b4319f"
  license "MIT" 

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/peterjohnbishop/symmetrical-stream/signaling.DefaultServerURL=symmetrical-companion-uvmuo.ondigitalocean.app
    ]

    system "go", "build", *std_go_args(ldflags: ldflags.join(" "))
  end
  test do
    system "#{bin}/symmetrical-stream", "--help"
  end
end
