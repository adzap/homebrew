require 'formula'

class Irssi <Formula
  @url='http://irssi.org/files/irssi-0.8.14.tar.bz2'
  @homepage='http://irssi.org/'
  @md5='00efe7638dd596d5930dfa2aeae87b3a'

  depends_on 'pkg-config'
  depends_on 'glib'

  def skip_clean? path
    path == bin+'irssi'
  end

  def install
    ENV.append 'ARCHFLAGS', ' ' # wtf?

    cargs = ["--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking",
             "--with-modules", "--enable-ssl", "--enable-ipv6"]

    # http://github.com/mxcl/homebrew/issues/#issue/367
    if MACOS_VERSION > 10.5
      cargs << "--with-perl=no"
    else
      cargs << "--with-perl=yes"
    end

    system "./configure", *cargs
    system "make install"
  end
end
