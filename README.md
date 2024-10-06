# luamux

This is a project (not ready for use) that will eventually support configuring
tmux via a Lua API. Lua is the initial choice for implementation, however this
(and the project name) is subject to change.

## Project Goals

> These goals are in order of importance, if sacrifices are to be made, make
> them at the bottom of the list

- Make tmux configurable through a more friendly API
  - When you get into complex configuration, tmux behavior can be unpredictable
    at times, ideally this project circumvents that pain entirely
- Make the project relatively easy to implement and maintain
  - Ultimately, the Lua C API would give the best performance, but initially,
    the project will attempt to avoid the need to use it to increase DX
  - Build lots of tools on top of the tmux binary to script away any project
    boiler plate, like command parsing syntax
- Play nice with tpm and the existing plugin ecosystem
  - Most (ideally all) plugins should be plug and play with this project
- tmux server state should stay in sync with the configuration
  - This means that changes to your configuration are reflected in existing tmux
    clients
  - But environment / key changes in your local session or pane ideally keep
    their settings (this part may be difficult to achieve)
- Support ways of hooking lua defined behavior into tmux
  - This could be as simple as dynamic behavior in your configuration based on
    the session
  - Or as complex as calling a lua function from a keybind
  - This one may tread on the non-goals, hence it is low priority for the
    project

## Non Goals

> These are subject to change, but ideally we avoid the need to do any of this
> things without good reason

- Require modifications to the tmux source
- Extend tmux configuration options beyond what the tmux configuration has
  defined

## TODO

See [TODO.md](./TODO.md)
