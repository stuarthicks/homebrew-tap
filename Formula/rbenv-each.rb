require 'formula'

class RbenvEach < Formula
  head 'https://github.com/chriseppstein/rbenv-each.git'

  depends_on 'rbenv'

  def install
    prefix.install Dir['*']
  end
end
