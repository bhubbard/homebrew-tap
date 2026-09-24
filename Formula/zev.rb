class Zev < Formula
  desc "Ultra-fast zero-token LLM decision engine in pure Rust"
  homepage "https://github.com/bhubbard/zev-rs"
  url "https://github.com/bhubbard/zev-rs/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "593f7f9db9a7fdf50bb37adcc9bb3554793faceaefd729e959a2c296b20b598f"
  license "MIT"
  head "https://github.com/bhubbard/zev-rs.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  service do
    run [opt_bin/"zev", "serve", "--port", "8080"]
    keep_alive true
    log_path var/"log/zev.log"
    error_log_path var/"log/zev.log"
    working_dir var
  end

  def caveats
    <<~EOS
      Zev runs in microseconds with zero model weights.

      Start as a background REST API server:
        brew services start zev

      Or evaluate decisions directly via CLI:
        zev route --state "Database is down" --routes '{"billing":"Invoices","infra":"Database outages"}'
    EOS
  end

  test do
    assert_match "zev", shell_output("#{bin}/zev --help")
  end
end
