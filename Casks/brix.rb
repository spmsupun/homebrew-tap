cask "brix" do
  version "0.1.0-beta.9"
  sha256 "6b6b801b6f390e1d4b0eccf4b54f2c25891243102047323d18aede0aa45942e8"

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
