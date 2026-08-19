
# export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897
export no_proxy="localhost,127.0.0.1,::1,10.0.0.0/8,192.168.0.0/16,deepseek.com,xiaomimimo.com"

# for uppercase env var first
export HTTP_PROXY="$http_proxy"
export HTTPS_PROXY="$https_proxy"
export NO_PROXY="$no_proxy"

export KB="/mnt/d/KBs/kb/"

# deepseek harness
alias dsh="npx --prefer-online @deepseek-ai/dsh@latest web"

# psychevo
export PEVO="/home/kevin/Projects/psychevo/target/debug/"
alias pbld="cargo build; pnpm --filter @psychevo/workbench build; $PEVO/pevo gateway stop"
alias pweb="$PEVO/pevo web --print-url"

# >>> non-windows >>>
configure_non_windows() {
. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"
}
# <<< non-windows <<<

# >>> windows >>>
configure_windows_git_bash() {
export KB="/d/KBs/kb/"

# psychevo
export PEVO="/d/Projects/psychevo/target/debug/"
alias pbld="cargo build; pnpm --filter @psychevo/workbench build; $PEVO/pevo.exe gateway stop"
alias pweb="$PEVO/pevo.exe web --print-url"

# fauplay
alias fply="pnpm install; cargo build -p fauplay-media-worker; pnpm tauri dev"
}
# <<< windows <<<

if [[ -n "${MSYSTEM:-}" ]]; then
configure_windows_git_bash
else
configure_non_windows
fi
