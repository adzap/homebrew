require 'formula'

class Node <Formula
  url 'http://github.com/ry/node/tarball/v0.1.22'
  head 'git://github.com/ry/node.git'
  homepage 'http://nodejs.org/'
  md5 '0cfff2bf4811ab0d0cc5d4db1afe9e2b'

  aka 'node.js'

  def skip_clean? path
    # TODO: at some point someone should tweak this so it only skips clean
    # for the bits that break the build otherwise
    true
  end

  def install
    ENV.gcc_4_2
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
