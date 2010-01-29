require 'formula'

class GitSvn < Formula
  head 'git://git.bogomips.org/git-svn.git'
  homepage 'http://www.kernel.org/pub/software/scm/git/docs/git-svn.html'

  def install
    system "make configure"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
