
export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897 no_proxy="localhost,127.0.0.1,::1,10.0.0.0/8,192.168.0.0/16,deepseek.com,xiaomimimo.com"

export KB="/mnt/d/KBs/kb/"
export PEVO="/home/kevin/Projects/psychevo/target/debug/"

alias pweb="$PEVO/pevo web --print-url"
