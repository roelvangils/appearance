# Example formula: appearance.rb
class Appearance < Formula
  desc "Change macOS appearance with this command line utility."
  homepage "https://github.com/roelvangils/appearance"
  url "https://github.com/roelvangils/appearance"
  sha256 "the_sha256_checksum_of_your_tarball"
  license "MIT"

  depends_on "shc" => :build

  def install
    system "shc", "-f", "yourscript.sh", "-o", "yourcommand"
    bin.install "yourcommand"
    # Install any additional files like man pages if you have them
    # man1.install "yourcommand.1"
  end

  test do
    system "#{bin}/yourcommand", "--version"
  end
end
