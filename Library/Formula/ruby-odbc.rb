require 'formula'

class RubyOdbc < Formula
  @url='http://www.ch-werner.de/rubyodbc/ruby-odbc-0.9997.tar.gz'
  @homepage='http://www.ch-werner.de/rubyodbc/'
  @md5='36d21519795c3edc8bc63b1ec6682b99'

  def install
    system 'ruby extconf.rb'
    system 'make'
    system 'make install'
  end
end
