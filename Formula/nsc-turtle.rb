class NscTurtle < Formula
  desc "Existence-isolation ledger and bounded workflow runner"
  homepage "https://github.com/newssourcecrawler/nsc_turtle"
  url "https://github.com/newssourcecrawler/nsc_turtle/archive/5dadf2f4c078efa396961b6725424674055f147a.tar.gz"
  version "0.0.1"
  sha256 "db9158dc0e47d5524fa2ad0247ac4a11daf9f5232616b1d5b1513b4a46b2897f"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  deny_network_access!

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args(path: "turtle/src"), "--bin", "turtle"
    system "cargo", "install", *std_cargo_args(path: "brownout"), "--bin", "brownout"
  end

  test do
    system bin/"turtle", "mush-put", "--dir", testpath.to_s, "--key", "brew-probe", "--data", "tap-ok"
    assert_equal "tap-ok", shell_output("#{bin}/turtle mush-get --dir #{testpath} --key brew-probe")

    assert_match "brownout: missing plan.json", shell_output("#{bin}/brownout 2>&1", 1)
  end
end
