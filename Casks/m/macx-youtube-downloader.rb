cask "macx-youtube-downloader" do
  version "5.3.2,2024091901"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-youtube-downloader-free.dmg"
  name "MacX YouTube Downloader"
  desc "Tool to download videos from YouTube"
  homepage "https://www.macxdvd.com/free-youtube-video-downloader-mac/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "MacX YouTube Downloader.app"

  zap trash: [
    "~/Library/Application Support/Digiarty",
    "~/Library/Caches/com.digiarty.youtubedownloader#{version.major}",
    "~/Library/Preferences/com.digiarty.youtubedownloader#{version.major}.plist",
  ]

  caveats do
    requires_rosetta
  end
end
