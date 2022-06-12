# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Esh < Formula
  desc "Simple templating engine based on shell."
  homepage "https://github.com/jirutka/esh"
  url "https://github.com/jirutka/esh/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4103b8901c7346f5dd608f2aa272d23c259434f825e6f39b2fb642157d6a2a7c"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "make", "test"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "esh"
  end

  # test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test esh`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
