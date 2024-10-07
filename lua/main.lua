local tmux = require("tmux")

tmux.source({ "intable" })
tmux.source("foo", "bar", "baz")

tmux.print_config()
