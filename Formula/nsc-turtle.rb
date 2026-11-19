
class NscTurtle < Formula
  desc "Existence-isolation ledger and bounded workflow runner"
  homepage "https://github.com/newssourcecrawler/nsc_turtle"
  url "https://github.com/newssourcecrawler/nsc_turtle/releases/download/v0.0.1/nsc-turtle-0.0.1-macos-arm64.tar.gz"
  version "0.0.1"
  sha256 "fc24311d23464322296bb855aae5af2c9abe16864f0d770cbadcdb51272647db"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "turtle", "brownout"
  end

  test do
    system bin/"turtle", "mush-put", "--dir", testpath.to_s,
           "--key", "brew-probe", "--data", "tap-ok"

    assert_equal "tap-ok",
      shell_output("#{bin}/turtle mush-get --dir #{testpath} --key brew-probe")

    assert_match "brownout: missing plan.json",
      shell_output("#{bin}/brownout 2>&1", 1)
  end
end
