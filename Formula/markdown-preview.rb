class MarkdownPreview < Formula
  desc "Terminal-first desktop Markdown previewer with live reload and Mermaid"
  homepage "https://github.com/Sangyups/markdown-preview"
  url "https://github.com/Sangyups/markdown-preview/releases/download/v1.1.5/markdown-preview-1.1.5.tgz"
  sha256 "f0764668e78b38129efefa682c6ebd3c47e70f6f5757f98611104ba15d807901"
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
