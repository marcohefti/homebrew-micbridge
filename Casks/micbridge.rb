cask "micbridge" do
  version "0.1.0"
  sha256 "c923a946916a3c5345b414185fe92033005cb0e2679375922f9562c79da8ef20"

  url "https://github.com/marcohefti/mac-virtual-mic-bridge/releases/download/v0.1.0/MicBridge-0.1.0.zip"
  name "MicBridge"
  desc "Resilient macOS virtual microphone bridge"
  homepage "https://github.com/marcohefti/mac-virtual-mic-bridge"

  depends_on macos: ">= :sonoma"
  app "MicBridge.app"

  caveats do
    <<~EOS
      This is distributed via a private tap and may be unsigned.
      If macOS blocks first launch, open MicBridge once via Finder and allow it in
      System Settings > Privacy & Security.
    EOS
  end

  zap trash: [
    "~/Library/Application Support/MacVirtualMicBridge",
    "~/Library/Logs/MacVirtualMicBridge",
    "~/Library/LaunchAgents/ch.hefti.macvirtualmicbridge.daemon.plist",
    "~/Library/LaunchAgents/ch.hefti.macvirtualmicbridge.menubar.plist"
  ]
end
