cask "micbridge" do
  version "0.2.0"
  sha256 "023d3f567204bf1b4cf24fc375dfd6ead12dc522d189d7fea3dc5eb8c067200d"

  url "https://github.com/marcohefti/mac-virtual-mic-bridge/releases/download/v0.2.0/MicBridge-0.2.0.zip"
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
