# Original plan

I first incepted this project with the intent to achieve what you'll see listed
below, but I quickly realized, that the project would be less maintainable than
if I just embed a luajit runtime directly into tmux. Thus this project is taking
on the original name I had in mind:

**neomux**

This would still allow me to achieve goals 1 & 3 and it would be more realistic
to achieve a performant solution to 4 & 5. All in all, I think tmux is already
written in a way where minimal modifications have to be made to make this
project achievable.

Following this section break is the original idea:

---

# luamux

This is a project (not ready for use) that will eventually support configuring
tmux via a Lua API. Lua is the initial choice for implementation, however this
(and the project name) is subject to change.

## Project Goals

> These goals are in order of importance, if sacrifices are to be made, make
> them at the bottom of the list

1. Make tmux configurable through a more friendly API  
   When you get into complex configuration, tmux behavior can be unpredictable
   at times, ideally this project circumvents that pain entirely

2. Make the project relatively easy to implement and maintain  
   Ultimately, the Lua C API would give the best performance, but initially, the
   project will attempt to avoid the need to use it to increase DX. Build lots
   of tools on top of the tmux binary to script away any project boiler plate,
   like command parsing syntax

3. Play nice with tpm and the existing plugin ecosystem  
   Most (ideally all) plugins should be plug and play with this project

4. tmux server state should stay in sync with the configuration  
   This means that changes to your configuration are reflected in existing tmux
   clients. But environment / key changes in your local session or pane ideally
   keep their settings (this part may be difficult to achieve)

5. Support ways of hooking lua defined behavior into tmux  
   This could be as simple as dynamic behavior in your configuration based on
   the session. Or as complex as calling a lua function from a keybind. This one
   may tread on the non-goals, hence it is low priority for the project.

## Non Goals

> These are subject to change, but ideally we avoid the need to do any of this
> things without good reason

- Require modifications to the tmux source
- Extend tmux configuration options beyond what the tmux configuration has
  defined

## TODO

See [TODO.md](./TODO.md)
