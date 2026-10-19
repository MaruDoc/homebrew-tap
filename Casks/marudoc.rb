cask "marudoc" do
  version "1.0.0"
  sha256 "cdd61b46bc06e12db50ec65776f85ce12b60a72e15a5cd833a8730652917f152"

  url "https://github.com/MaruDoc/marudoc/releases/download/v#{version}/MaruDoc-#{version}.dmg",
      verified: "github.com/MaruDoc/marudoc/"
  name "MaruDoc"
  desc "Offline document conversion and editing from Finder"
  homepage "https://marudoc.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MaruDoc.app"

  zap trash: [
    "~/Library/Application Support/MaruDoc",
    "~/Library/Group Containers/FC2V887B8C.app.marudoc",
    "~/Library/Logs/MaruDoc",
    "~/Library/Preferences/app.marudoc.MaruDoc.plist",
  ]
end
