# neomux

> Turns out there's already a plugin that solves the main reason I personally
> had for creating this project `tmux-plugins/continuum`, I'm moving on to
> other things. Maybe I will unarchive this idea in the future.

This project intends to embed a Lua configuration interface into tmux. Stay
tuned for more progress, and leave a star, it lets me know if this project would
be useful to you!

## Project Goals

1.  Make tmux configurable through a more friendly API
2.  Make the project relatively easy to implement and maintain
3.  Performance - using this configuration approach should have minimal runtime
    cost
4.  Play nice with tpm and the existing plugin ecosystem  
    Most (ideally all) plugins should be plug and play with this project
5.  tmux server state should stay in sync with the configuration  
    This means that changes to your configuration are reflected in existing tmux
    clients. But changes in your existing local session or pane ideally keep
    their configuration changes
6.  Support ways of hooking Lua defined behavior into tmux  
    This could be as simple as dynamic behavior in your configuration based on
    the session. Or as complex as calling a lua function from a keybind. This
    one may tread on the non-goals, hence it is low priority for the project.

## Non Goals

1. Adding new features to tmux (other than what is required to embed this API)

> There may a few added features, such as how to source the lua config? Do you
> have to pick either tmux.lua or tmux.conf? Or should there be a source-lua or
> extension to the source-file command which pulls in the lua configuration?
> Solution TBD.
