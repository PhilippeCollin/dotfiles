if ! [ $SPIN ]; then
    alias spo="spin shell online-store-web"
    alias sps="spin shell shopify"
    alias spw="spin shell web"
fi

if [ $SPIN ]; then
    alias rnginx="sudo pkill -9 nginx && sudo service nginx start"


    function logf() {
        journalctl -u proc-shopify--"$1"@server.service -f
    }

    function restart() {
        systemctl restart proc-shopify--"$1"@server.service
    }

    function start() {
        systemctl start proc-shopify--"$1"@server.service
    }

    function stop() {
        systemctl stop proc-shopify--"$1"@server.service
    }
fi
