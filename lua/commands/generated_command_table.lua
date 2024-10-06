-- GENERATED FILE DO NOT MODIFY DIRECTLY

M = {
  ["attach-session"] = {
    alias = "attach",
    usage = "[-dErx] [-c working-directory] [-f flags] [-t target-session]",
  },
  ["bind-key"] = {
    alias = "bind",
    usage = "[-nr] [-T key-table] [-N note] key [command [arguments]]",
  },
  ["break-pane"] = {
    alias = "breakp",
    usage = "[-abdP] [-F format] [-n window-name] [-s src-pane] [-t dst-window]",
  },
  ["capture-pane"] = {
    alias = "capturep",
    usage = "[-aCeJNpPqT] [-b buffer-name] [-E end-line] [-S start-line] [-t target-pane]",
  },
  ["choose-buffer"] = {
    alias = "",
    usage = "[-NrZ] [-F format] [-f filter] [-K key-format] [-O sort-order] [-t target-pane] [template]",
  },
  ["choose-client"] = {
    alias = "",
    usage = "[-NrZ] [-F format] [-f filter] [-K key-format] [-O sort-order] [-t target-pane] [template]",
  },
  ["choose-tree"] = {
    alias = "",
    usage = "[-GNrswZ] [-F format] [-f filter] [-K key-format] [-O sort-order] [-t target-pane] [template]",
  },
  ["clear-history"] = {
    alias = "clearhist",
    usage = "[-H] [-t target-pane]",
  },
  ["clear-prompt-history"] = {
    alias = "clearphist",
    usage = "[-T type]",
  },
  ["clock-mode"] = {
    alias = "",
    usage = "[-t target-pane]",
  },
  ["command-prompt"] = {
    alias = "",
    usage = "[-1bFkiN] [-I inputs] [-p prompts] [-t target-client] [-T type] [template]",
  },
  ["confirm-before"] = {
    alias = "confirm",
    usage = "[-by] [-c confirm_key] [-p prompt] [-t target-client] command",
  },
  ["copy-mode"] = {
    alias = "",
    usage = "[-deHMuq] [-s src-pane] [-t target-pane]",
  },
  ["customize-mode"] = {
    alias = "",
    usage = "[-NZ] [-F format] [-f filter] [-t target-pane]",
  },
  ["delete-buffer"] = {
    alias = "deleteb",
    usage = "[-b buffer-name]",
  },
  ["detach-client"] = {
    alias = "detach",
    usage = "[-aP] [-E shell-command] [-s target-session] [-t target-client]",
  },
  ["display-menu"] = {
    alias = "menu",
    usage = "[-MO] [-b border-lines] [-c target-client] [-C starting-choice] [-H selected-style] [-s style] [-S border-style] [-t target-pane][-T title] [-x position] [-y position] name key command ...",
  },
  ["display-message"] = {
    alias = "display",
    usage = "[-aIlNpv] [-c target-client] [-d delay] [-F format] [-t target-pane] [message]",
  },
  ["display-popup"] = {
    alias = "popup",
    usage = "[-BCE] [-b border-lines] [-c target-client] [-d start-directory] [-e environment] [-h height] [-s style] [-S border-style] [-t target-pane][-T title] [-w width] [-x position] [-y position] [shell-command]",
  },
  ["display-panes"] = {
    alias = "displayp",
    usage = "[-bN] [-d duration] [-t target-client] [template]",
  },
  ["find-window"] = {
    alias = "findw",
    usage = "[-CiNrTZ] [-t target-pane] match-string",
  },
  ["has-session"] = {
    alias = "has",
    usage = "[-t target-session]",
  },
  ["if-shell"] = {
    alias = "if",
    usage = "[-bF] [-t target-pane] shell-command command [command]",
  },
  ["join-pane"] = {
    alias = "joinp",
    usage = "[-bdfhv] [-l size] [-s src-pane] [-t dst-pane]",
  },
  ["kill-pane"] = {
    alias = "killp",
    usage = "[-a] [-t target-pane]",
  },
  ["kill-server"] = {
    alias = "",
    usage = "",
  },
  ["kill-session"] = {
    alias = "",
    usage = "[-aC] [-t target-session]",
  },
  ["kill-window"] = {
    alias = "killw",
    usage = "[-a] [-t target-window]",
  },
  ["last-pane"] = {
    alias = "lastp",
    usage = "[-deZ] [-t target-window]",
  },
  ["last-window"] = {
    alias = "last",
    usage = "[-t target-session]",
  },
  ["link-window"] = {
    alias = "linkw",
    usage = "[-abdk] [-s src-window] [-t dst-window]",
  },
  ["list-buffers"] = {
    alias = "lsb",
    usage = "[-F format] [-f filter]",
  },
  ["list-clients"] = {
    alias = "lsc",
    usage = "[-F format] [-f filter] [-t target-session]",
  },
  ["list-commands"] = {
    alias = "lscm",
    usage = "[-F format] [command]",
  },
  ["list-keys"] = {
    alias = "lsk",
    usage = "[-1aN] [-P prefix-string] [-T key-table] [key]",
  },
  ["list-panes"] = {
    alias = "lsp",
    usage = "[-as] [-F format] [-f filter] [-t target-window]",
  },
  ["list-sessions"] = {
    alias = "ls",
    usage = "[-F format] [-f filter]",
  },
  ["list-windows"] = {
    alias = "lsw",
    usage = "[-a] [-F format] [-f filter] [-t target-session]",
  },
  ["load-buffer"] = {
    alias = "loadb",
    usage = "[-b buffer-name] [-t target-client] path",
  },
  ["lock-client"] = {
    alias = "lockc",
    usage = "[-t target-client]",
  },
  ["lock-server"] = {
    alias = "lock",
    usage = "",
  },
  ["lock-session"] = {
    alias = "locks",
    usage = "[-t target-session]",
  },
  ["move-pane"] = {
    alias = "movep",
    usage = "[-bdfhv] [-l size] [-s src-pane] [-t dst-pane]",
  },
  ["move-window"] = {
    alias = "movew",
    usage = "[-abdkr] [-s src-window] [-t dst-window]",
  },
  ["new-session"] = {
    alias = "new",
    usage = "[-AdDEPX] [-c start-directory] [-e environment] [-F format] [-f flags] [-n window-name] [-s session-name] [-t target-session] [-x width] [-y height] [shell-command]",
  },
  ["new-window"] = {
    alias = "neww",
    usage = "[-abdkPS] [-c start-directory] [-e environment] [-F format] [-n window-name] [-t target-window] [shell-command]",
  },
  ["next-layout"] = {
    alias = "nextl",
    usage = "[-t target-window]",
  },
  ["next-window"] = {
    alias = "next",
    usage = "[-a] [-t target-session]",
  },
  ["paste-buffer"] = {
    alias = "pasteb",
    usage = "[-dpr] [-s separator] [-b buffer-name] [-t target-pane]",
  },
  ["pipe-pane"] = {
    alias = "pipep",
    usage = "[-IOo] [-t target-pane] [shell-command]",
  },
  ["previous-layout"] = {
    alias = "prevl",
    usage = "[-t target-window]",
  },
  ["previous-window"] = {
    alias = "prev",
    usage = "[-a] [-t target-session]",
  },
  ["refresh-client"] = {
    alias = "refresh",
    usage = "[-cDlLRSU] [-A pane:state] [-B name:what:format] [-C XxY] [-f flags] [-r pane:report][-t target-client] [adjustment]",
  },
  ["rename-session"] = {
    alias = "rename",
    usage = "[-t target-session] new-name",
  },
  ["rename-window"] = {
    alias = "renamew",
    usage = "[-t target-window] new-name",
  },
  ["resize-pane"] = {
    alias = "resizep",
    usage = "[-DLMRTUZ] [-x width] [-y height] [-t target-pane] [adjustment]",
  },
  ["resize-window"] = {
    alias = "resizew",
    usage = "[-aADLRU] [-x width] [-y height] [-t target-window] [adjustment]",
  },
  ["respawn-pane"] = {
    alias = "respawnp",
    usage = "[-k] [-c start-directory] [-e environment] [-t target-pane] [shell-command]",
  },
  ["respawn-window"] = {
    alias = "respawnw",
    usage = "[-k] [-c start-directory] [-e environment] [-t target-window] [shell-command]",
  },
  ["rotate-window"] = {
    alias = "rotatew",
    usage = "[-DUZ] [-t target-window]",
  },
  ["run-shell"] = {
    alias = "run",
    usage = "[-bC] [-c start-directory] [-d delay] [-t target-pane] [shell-command]",
  },
  ["save-buffer"] = {
    alias = "saveb",
    usage = "[-a] [-b buffer-name] path",
  },
  ["select-layout"] = {
    alias = "selectl",
    usage = "[-Enop] [-t target-pane] [layout-name]",
  },
  ["select-pane"] = {
    alias = "selectp",
    usage = "[-DdeLlMmRUZ] [-T title] [-t target-pane]",
  },
  ["select-window"] = {
    alias = "selectw",
    usage = "[-lnpT] [-t target-window]",
  },
  ["send-keys"] = {
    alias = "send",
    usage = "[-FHKlMRX] [-c target-client] [-N repeat-count] [-t target-pane] key ...",
  },
  ["send-prefix"] = {
    alias = "",
    usage = "[-2] [-t target-pane]",
  },
  ["server-access"] = {
    alias = "",
    usage = "[-adlrw] [-t target-pane] [user]",
  },
  ["set-buffer"] = {
    alias = "setb",
    usage = "[-aw] [-b buffer-name] [-n new-buffer-name] [-t target-client] data",
  },
  ["set-environment"] = {
    alias = "setenv",
    usage = "[-Fhgru] [-t target-session] name [value]",
  },
  ["set-hook"] = {
    alias = "",
    usage = "[-agpRuw] [-t target-pane] hook [command]",
  },
  ["set-option"] = {
    alias = "set",
    usage = "[-aFgopqsuUw] [-t target-pane] option [value]",
  },
  ["set-window-option"] = {
    alias = "setw",
    usage = "[-aFgoqu] [-t target-window] option [value]",
  },
  ["show-buffer"] = {
    alias = "showb",
    usage = "[-b buffer-name]",
  },
  ["show-environment"] = {
    alias = "showenv",
    usage = "[-hgs] [-t target-session] [name]",
  },
  ["show-hooks"] = {
    alias = "",
    usage = "[-gpw] [-t target-pane]",
  },
  ["show-messages"] = {
    alias = "showmsgs",
    usage = "[-JT] [-t target-client]",
  },
  ["show-options"] = {
    alias = "show",
    usage = "[-AgHpqsvw] [-t target-pane] [option]",
  },
  ["show-prompt-history"] = {
    alias = "showphist",
    usage = "[-T type]",
  },
  ["show-window-options"] = {
    alias = "showw",
    usage = "[-gv] [-t target-window] [option]",
  },
  ["source-file"] = {
    alias = "source",
    usage = "[-Fnqv] [-t target-pane] path ...",
  },
  ["split-window"] = {
    alias = "splitw",
    usage = "[-bdefhIPvZ] [-c start-directory] [-e environment] [-F format] [-l size] [-t target-pane][shell-command]",
  },
  ["start-server"] = {
    alias = "start",
    usage = "",
  },
  ["suspend-client"] = {
    alias = "suspendc",
    usage = "[-t target-client]",
  },
  ["swap-pane"] = {
    alias = "swapp",
    usage = "[-dDUZ] [-s src-pane] [-t dst-pane]",
  },
  ["swap-window"] = {
    alias = "swapw",
    usage = "[-d] [-s src-window] [-t dst-window]",
  },
  ["switch-client"] = {
    alias = "switchc",
    usage = "[-ElnprZ] [-c target-client] [-t target-session] [-T key-table]",
  },
  ["unbind-key"] = {
    alias = "unbind",
    usage = "[-anq] [-T key-table] key",
  },
  ["unlink-window"] = {
    alias = "unlinkw",
    usage = "[-k] [-t target-window]",
  },
  ["wait-for"] = {
    alias = "wait",
    usage = "[-L|-S|-U] channel",
  },
}

return M

