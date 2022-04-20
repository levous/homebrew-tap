class Gitignore < Formula
  desc "Script to generate .gitignore files for a specified language"
  homepage "https://github.com/levous/gitignore"
  url "https://github.com/levous/gitignore/blob/master/gitignore-1.3.tar.gz?raw=true"
  version "1.3"
  sha256 "0a9711c365e84f1f7d4dd1ab0505f78c5dedfc5a216f52ab3ea40cbea8a9ee58"

  def install
    # install gitignore script, create symlink to script in /usr/local/bin
    bin.install "gitignore"
  end

  test do
    system "false"
  end
end
