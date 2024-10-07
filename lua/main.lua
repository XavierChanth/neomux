local tmux = require("tmux")

tmux.source({ "intable" })
tmux.source("foo", "bar", "baz")
tmux.source({ flags = "a", "posintable" })
tmux.source({ "posintable", flags = "a" })
tmux.print_config()
