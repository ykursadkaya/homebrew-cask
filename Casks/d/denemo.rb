cask "denemo" do
  version "2.2"
  sha256 "6ec66279be560e6e997b1108ae9ed61e6c37c36a350fbd99cd3dded8e2cfbe5f"

  url "https://denemo.org/downloads/denemo-#{version}-darwin-x64.tar.bz2"
  name "Denemo"
  desc "Music notation program"
  homepage "https://denemo.org/"

  livecheck do
    url "https://denemo.org/downloads/"
    regex(/href=.*?denemo[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]x64\.t/i)
  end

  app "Denemo.app"
end
