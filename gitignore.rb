class Gitignore < Formula
  desc "Script to generate .gitignore files for a specified language"
  homepage "https://github.com/levous/gitignore"
  url "https://github.com/levous/gitignore/blob/master/gitignore-1.3.tar.gz?raw=true"
  version "1.3"
  sha256 "c2665ec3fe39b7efe419e3f1802eace6d39ed0774c9fc9f31f415a78ae61b35b"

  def install
    # install gitignore script, create symlink to script in /usr/local/bin
    bin.install "gitignore"
  end

  test do
    system "false"
  end
end
