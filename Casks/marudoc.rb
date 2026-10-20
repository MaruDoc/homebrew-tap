cask "marudoc" do
  version "1.0.1"
  sha256 "761b255e376bdc107f4ed78a048b0e8d5a7cc5a864f5abe5e81180e21fbd8c14"

  url "https://github.com/MaruDoc/marudoc/releases/download/v#{version}/MaruDoc-#{version}.dmg"
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
    "~/Library/Application Scripts/app.marudoc.MaruDoc.FinderSync",
    "~/Library/Application Scripts/FC2V887B8C.app.marudoc",
    "~/Library/Application Support/MaruDoc",
    "~/Library/Caches/app.marudoc.MaruDoc",
    "~/Library/Containers/app.marudoc.MaruDoc.FinderSync",
    "~/Library/Group Containers/FC2V887B8C.app.marudoc",
    "~/Library/Logs/MaruDoc",
    "~/Library/Preferences/app.marudoc.MaruDoc.plist",
  ]
end
