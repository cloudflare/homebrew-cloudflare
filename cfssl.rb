require 'formula'

class NoOpDownloadStrategy < AbstractDownloadStrategy
# Don't do anything.
end

class Cfssl < Formula
  head 'https://github.com/cloudflare/cfssl', :using => NoOpDownloadStrategy
  url 'https://github.com/cloudflare/cfssl/archive/1.2.0.zip'
  sha256 'afe8ac0087226dfe02448c05110108b2c62eabeae5bcf9064784366b44d29b7a'
  homepage 'https://github.com/cloudflare/cfssl'
  version '1.2.0'

  depends_on 'go' => :build

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      system 'go', 'get', 'github.com/cloudflare/cfssl'
      bin.install 'bin/cfssl'
    else
      chdir '..' do
        ENV['GOPATH'] = Dir.pwd
        mkdir 'src/github.com/cloudflare'
        symlink '../../../cfssl-1.2.0', 'src/github.com/cloudflare/cfssl'
        system 'go', 'install', 'github.com/cloudflare/cfssl/cmd/cfssl'
        bin.install 'bin/cfssl'
      end
    end
  end

  test do
    system "#{bin}/cfssl", "version"
  end
end
