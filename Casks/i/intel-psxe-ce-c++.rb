cask "intel-psxe-ce-c++" do
  version "2020.2.899,16768"
  sha256 "d224821978c56d3744ee04ae1f1e400e2b6294a4d6186bd06d8c4fd6565c4967"

  url "https://registrationcenter-download.intel.com/akdlm/irc_nas/tec/#{version.csv.second}/m_ccompxe_#{version.csv.first}.dmg"
  name "Intel Parallel Studio XE Composer Edition for C++"
  desc "Software development tools"
  homepage "https://software.intel.com/en-us/parallel-studio-xe"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-16", because: :discontinued

  installer manual: "m_ccompxe_#{version.csv.first}.app"

  uninstall script: {
    executable: "m_ccompxe_#{version.csv.first}.app/Contents/MacOS/uninstall.sh",
    args:       ["--silent"],
    sudo:       true,
  }

  caveats do
    license "https://software.intel.com/en-us/articles/end-user-license-agreement"
    free_license "https://software.intel.com/en-us/articles/qualify-for-free-software"
  end
end
