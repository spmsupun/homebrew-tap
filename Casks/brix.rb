cask "brix" do
  version "0.1.0-beta.12"
  sha256 "2bb5fea85c90eb1319e1a8ebe71c2aa65860f632567d39042feb31b4ea42d9d3"

  url "https://github.com/spmsupun/brix/releases/download/v#{version}/Brix-#{version}-macOS.zip"
  name "Brix"
  desc "Workspace for developers who build with AI coding agents"
  homepage "https://github.com/spmsupun/brix"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/i)
    strategy :git
  end

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
