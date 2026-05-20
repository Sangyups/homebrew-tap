class MarkdownPreview < Formula
  desc "Terminal-first desktop Markdown previewer with live reload and Mermaid"
  homepage "https://github.com/Sangyups/markdown-preview"
  url "https://github.com/Sangyups/markdown-preview/releases/download/v1.2.0/markdown-preview-1.2.0.tgz"
  sha256 "cac7164eeaaa32abd381952b44602fe017a919692698bc4a2c29a421f921d4e7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec, ignore_scripts: false)
    bin.install_symlink Dir["#{libexec}/bin/mdp"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdp --version")
  end
end
