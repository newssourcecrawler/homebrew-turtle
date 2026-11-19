
class NscTurtle < Formula
  desc "Existence-isolation ledger and bounded workflow runner"
  homepage "https://github.com/newssourcecrawler/nsc_turtle"
  version "0.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/newssourcecrawler/nsc_turtle/releases/download/v0.0.1/nsc-turtle-0.0.1-macos-arm64.tar.gz"
      sha256 "fc24311d23464322296bb855aae5af2c9abe16864f0d770cbadcdb51272647db"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/newssourcecrawler/nsc_turtle/releases/download/v0.0.1/nsc-turtle-0.0.1-linux-x86_64.tar.gz"
      sha256 "b829c3a9e81be9e10eefd8689ca890868ba15277ba3a69031b5f0f675e0089c4"
    end
  end

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
