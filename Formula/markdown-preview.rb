class MarkdownPreview < Formula
  desc "Terminal-first desktop Markdown previewer with live reload and Mermaid"
  homepage "https://github.com/Sangyups/markdown-preview"
  url "https://github.com/Sangyups/markdown-preview/releases/download/v1.1.4/markdown-preview-1.1.4.tgz"
  sha256 "6157d0db92248f8bb191ad79837ec05e655c884ceb8ea95d3a7fba9d21235a8d"
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
