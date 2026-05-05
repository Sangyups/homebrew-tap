class MarkdownPreview < Formula
  desc "Terminal-first desktop Markdown previewer with live reload and Mermaid"
  homepage "https://github.com/Sangyups/markdown-preview"
  url "https://github.com/Sangyups/markdown-preview/releases/download/v1.1.3/markdown-preview-1.1.3.tgz"
  sha256 "eb78ac42b7a6db2167f8259af85e54c8f7cf1077ada1902ac7244242cb413c83"
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
