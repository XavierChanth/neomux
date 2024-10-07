local tmux = require("tmux")

tmux.source({ "hello" })

tmux.print_config()
