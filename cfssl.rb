require 'formula'

class NoOpDownloadStrategy < AbstractDownloadStrategy
# Don't do anything.
end

class Cfssl < Formula
  head 'https://github.com/cloudflare/cfssl', :using => NoOpDownloadStrategy
  url "https://github.com/cloudflare/cfssl/archive/master.zip"
  homepage 'https://github.com/cloudflare/cfssl'

  depends_on 'go' => :build

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      system 'go', 'get', 'github.com/cloudflare/cfssl'
    end
    bin.install 'bin/cfssl'
  end

  test do
    system "#{bin}/cfssl", "version"
  end
end
