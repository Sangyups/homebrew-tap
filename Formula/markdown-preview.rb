class MarkdownPreview < Formula
  desc "Terminal-first desktop Markdown previewer with live reload and Mermaid"
  homepage "https://github.com/Sangyups/markdown-preview"
  url "https://github.com/Sangyups/markdown-preview/releases/download/v1.1.6/markdown-preview-1.1.6.tgz"
  sha256 "b417c59b78700a47bba927c47a323a056f60e5b53eaa5dc71f02ebf92c9b993a"
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
