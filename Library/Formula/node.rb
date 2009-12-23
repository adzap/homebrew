require 'formula'

class Node <Formula
  url 'http://github.com/ry/node/tarball/v0.1.22'
  head 'git://github.com/ry/node.git'
  homepage 'http://nodejs.org/'
  md5 '1fc16b7a813a99f5889710a75c130c84'

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
