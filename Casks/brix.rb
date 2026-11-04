cask "brix" do
  version "0.1.0-beta.17"
  sha256 "f0d998209a74c91084e726beac2b42672c5248b096bab1c67e858e0bd93cdc43"

  url "https://github.com/spmsupun/brix/releases/download/v#{version}/Brix-#{version}-macOS.zip"
  name "Brix"
  desc "Workspace for developers who build with AI coding agents"
  homepage "https://github.com/spmsupun/brix"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/i)
    strategy :git
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Brix.app"

  zap trash: [
    "~/Library/Application Support/Brix",
    "~/Library/Caches/com.spmsupun.brix",
    "~/Library/HTTPStorages/com.spmsupun.brix",
    "~/Library/Preferences/com.spmsupun.brix.plist",
    "~/Library/Saved Application State/com.spmsupun.brix.savedState",
  ]
end
