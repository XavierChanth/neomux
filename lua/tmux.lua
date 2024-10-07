local config = {}
-- TODO how to handle nested commands? like bind-key?
local function make_config_metatable(cmd)
	return setmetatable({}, {
		__call = function(_, args)
			local t = { cmd = cmd }
			if args == nil then
				return t
			end

			local pos = {}
			--named args
			for k, v in pairs(args) do
				local tk = type(k)
				if tk == "number" then
					-- handle positional options
					pos[k] = v
				elseif tk == "string" then
					if #k == 5 and k == "flags" then
						-- handle flags
						t.flags = require("util.parse").flags(v)
					elseif type(v) == "string" then
						-- handle named options (e.g. `-s <session>`)
						t[k] = v
					end
				end
			end

			if #pos > 0 then
				t.pos = pos
			end

			config[#config + 1] = t
		end,
	})
end

return {
	config = function()
		return config
	end,
	print_config = function()
		require("util.print").pretty_print(config)
	end,

	-- TMUX COMMANDS
	-- generate commands list with the following
	-- macos:
	-- tmux list-commands -F '  ["#{command_list_name}"] = make_config_metatable("#{command_list_name}"),' | pbcopy
	-- linux:
	-- tmux list-commands -F '  ["#{command_list_name}"] = make_config_metatable("#{command_list_name}"),' | xclip
	["attach-session"] = make_config_metatable("attach-session"),
	["bind-key"] = make_config_metatable("bind-key"),
	["break-pane"] = make_config_metatable("break-pane"),
	["capture-pane"] = make_config_metatable("capture-pane"),
	["choose-buffer"] = make_config_metatable("choose-buffer"),
	["choose-client"] = make_config_metatable("choose-client"),
	["choose-tree"] = make_config_metatable("choose-tree"),
	["clear-history"] = make_config_metatable("clear-history"),
	["clear-prompt-history"] = make_config_metatable("clear-prompt-history"),
	["clock-mode"] = make_config_metatable("clock-mode"),
	["command-prompt"] = make_config_metatable("command-prompt"),
	["confirm-before"] = make_config_metatable("confirm-before"),
	["copy-mode"] = make_config_metatable("copy-mode"),
	["customize-mode"] = make_config_metatable("customize-mode"),
	["delete-buffer"] = make_config_metatable("delete-buffer"),
	["detach-client"] = make_config_metatable("detach-client"),
	["display-menu"] = make_config_metatable("display-menu"),
	["display-message"] = make_config_metatable("display-message"),
	["display-popup"] = make_config_metatable("display-popup"),
	["display-panes"] = make_config_metatable("display-panes"),
	["find-window"] = make_config_metatable("find-window"),
	["has-session"] = make_config_metatable("has-session"),
	["if-shell"] = make_config_metatable("if-shell"),
	["join-pane"] = make_config_metatable("join-pane"),
	["kill-pane"] = make_config_metatable("kill-pane"),
	["kill-server"] = make_config_metatable("kill-server"),
	["kill-session"] = make_config_metatable("kill-session"),
	["kill-window"] = make_config_metatable("kill-window"),
	["last-pane"] = make_config_metatable("last-pane"),
	["last-window"] = make_config_metatable("last-window"),
	["link-window"] = make_config_metatable("link-window"),
	["list-buffers"] = make_config_metatable("list-buffers"),
	["list-clients"] = make_config_metatable("list-clients"),
	["list-commands"] = make_config_metatable("list-commands"),
	["list-keys"] = make_config_metatable("list-keys"),
	["list-panes"] = make_config_metatable("list-panes"),
	["list-sessions"] = make_config_metatable("list-sessions"),
	["list-windows"] = make_config_metatable("list-windows"),
	["load-buffer"] = make_config_metatable("load-buffer"),
	["lock-client"] = make_config_metatable("lock-client"),
	["lock-server"] = make_config_metatable("lock-server"),
	["lock-session"] = make_config_metatable("lock-session"),
	["move-pane"] = make_config_metatable("move-pane"),
	["move-window"] = make_config_metatable("move-window"),
	["new-session"] = make_config_metatable("new-session"),
	["new-window"] = make_config_metatable("new-window"),
	["next-layout"] = make_config_metatable("next-layout"),
	["next-window"] = make_config_metatable("next-window"),
	["paste-buffer"] = make_config_metatable("paste-buffer"),
	["pipe-pane"] = make_config_metatable("pipe-pane"),
	["previous-layout"] = make_config_metatable("previous-layout"),
	["previous-window"] = make_config_metatable("previous-window"),
	["refresh-client"] = make_config_metatable("refresh-client"),
	["rename-session"] = make_config_metatable("rename-session"),
	["rename-window"] = make_config_metatable("rename-window"),
	["resize-pane"] = make_config_metatable("resize-pane"),
	["resize-window"] = make_config_metatable("resize-window"),
	["respawn-pane"] = make_config_metatable("respawn-pane"),
	["respawn-window"] = make_config_metatable("respawn-window"),
	["rotate-window"] = make_config_metatable("rotate-window"),
	["run-shell"] = make_config_metatable("run-shell"),
	["save-buffer"] = make_config_metatable("save-buffer"),
	["select-layout"] = make_config_metatable("select-layout"),
	["select-pane"] = make_config_metatable("select-pane"),
	["select-window"] = make_config_metatable("select-window"),
	["send-keys"] = make_config_metatable("send-keys"),
	["send-prefix"] = make_config_metatable("send-prefix"),
	["server-access"] = make_config_metatable("server-access"),
	["set-buffer"] = make_config_metatable("set-buffer"),
	["set-environment"] = make_config_metatable("set-environment"),
	["set-hook"] = make_config_metatable("set-hook"),
	["set-option"] = make_config_metatable("set-option"),
	["set-window-option"] = make_config_metatable("set-window-option"),
	["show-buffer"] = make_config_metatable("show-buffer"),
	["show-environment"] = make_config_metatable("show-environment"),
	["show-hooks"] = make_config_metatable("show-hooks"),
	["show-messages"] = make_config_metatable("show-messages"),
	["show-options"] = make_config_metatable("show-options"),
	["show-prompt-history"] = make_config_metatable("show-prompt-history"),
	["show-window-options"] = make_config_metatable("show-window-options"),
	["source-file"] = make_config_metatable("source-file"),
	["split-window"] = make_config_metatable("split-window"),
	["start-server"] = make_config_metatable("start-server"),
	["suspend-client"] = make_config_metatable("suspend-client"),
	["swap-pane"] = make_config_metatable("swap-pane"),
	["swap-window"] = make_config_metatable("swap-window"),
	["switch-client"] = make_config_metatable("switch-client"),
	["unbind-key"] = make_config_metatable("unbind-key"),
	["unlink-window"] = make_config_metatable("unlink-window"),
	["wait-for"] = make_config_metatable("wait-for"),

	-- TMUX ALIASES
	-- generate alias list with the following
	-- note: we changed the "if" alias to "ifs" since if is a keyword in lua
	-- TODO: maybe we should handle if separately since it can have `{}` blocks
	-- and instead of modifying it with sed, remove it from the list and add a special command for it
	--
	-- macos:
	-- tmux list-commands -F '  ["#{command_list_alias}"] = make_config_metatable("#{command_list_name}"),' | grep -v '\[""\]' | sed -e 's/\["if"\]/["ifs"]/' | pbcopy
	-- linux:
	-- tmux list-commands -F '  ["#{command_list_alias}"] = make_config_metatable("#{command_list_name}"),' | grep -v '\[""\]' | sed -e 's/\["if"\]/["ifs"]/' | xclip
	["attach"] = make_config_metatable("attach-session"),
	["bind"] = make_config_metatable("bind-key"),
	["breakp"] = make_config_metatable("break-pane"),
	["capturep"] = make_config_metatable("capture-pane"),
	["clearhist"] = make_config_metatable("clear-history"),
	["clearphist"] = make_config_metatable("clear-prompt-history"),
	["confirm"] = make_config_metatable("confirm-before"),
	["deleteb"] = make_config_metatable("delete-buffer"),
	["detach"] = make_config_metatable("detach-client"),
	["menu"] = make_config_metatable("display-menu"),
	["display"] = make_config_metatable("display-message"),
	["popup"] = make_config_metatable("display-popup"),
	["displayp"] = make_config_metatable("display-panes"),
	["findw"] = make_config_metatable("find-window"),
	["has"] = make_config_metatable("has-session"),
	["if"] = make_config_metatable("if-shell"),
	["joinp"] = make_config_metatable("join-pane"),
	["killp"] = make_config_metatable("kill-pane"),
	["killw"] = make_config_metatable("kill-window"),
	["lastp"] = make_config_metatable("last-pane"),
	["last"] = make_config_metatable("last-window"),
	["linkw"] = make_config_metatable("link-window"),
	["lsb"] = make_config_metatable("list-buffers"),
	["lsc"] = make_config_metatable("list-clients"),
	["lscm"] = make_config_metatable("list-commands"),
	["lsk"] = make_config_metatable("list-keys"),
	["lsp"] = make_config_metatable("list-panes"),
	["ls"] = make_config_metatable("list-sessions"),
	["lsw"] = make_config_metatable("list-windows"),
	["loadb"] = make_config_metatable("load-buffer"),
	["lockc"] = make_config_metatable("lock-client"),
	["lock"] = make_config_metatable("lock-server"),
	["locks"] = make_config_metatable("lock-session"),
	["movep"] = make_config_metatable("move-pane"),
	["movew"] = make_config_metatable("move-window"),
	["new"] = make_config_metatable("new-session"),
	["neww"] = make_config_metatable("new-window"),
	["nextl"] = make_config_metatable("next-layout"),
	["next"] = make_config_metatable("next-window"),
	["pasteb"] = make_config_metatable("paste-buffer"),
	["pipep"] = make_config_metatable("pipe-pane"),
	["prevl"] = make_config_metatable("previous-layout"),
	["prev"] = make_config_metatable("previous-window"),
	["refresh"] = make_config_metatable("refresh-client"),
	["rename"] = make_config_metatable("rename-session"),
	["renamew"] = make_config_metatable("rename-window"),
	["resizep"] = make_config_metatable("resize-pane"),
	["resizew"] = make_config_metatable("resize-window"),
	["respawnp"] = make_config_metatable("respawn-pane"),
	["respawnw"] = make_config_metatable("respawn-window"),
	["rotatew"] = make_config_metatable("rotate-window"),
	["run"] = make_config_metatable("run-shell"),
	["saveb"] = make_config_metatable("save-buffer"),
	["selectl"] = make_config_metatable("select-layout"),
	["selectp"] = make_config_metatable("select-pane"),
	["selectw"] = make_config_metatable("select-window"),
	["send"] = make_config_metatable("send-keys"),
	["setb"] = make_config_metatable("set-buffer"),
	["setenv"] = make_config_metatable("set-environment"),
	["set"] = make_config_metatable("set-option"),
	["setw"] = make_config_metatable("set-window-option"),
	["showb"] = make_config_metatable("show-buffer"),
	["showenv"] = make_config_metatable("show-environment"),
	["showmsgs"] = make_config_metatable("show-messages"),
	["show"] = make_config_metatable("show-options"),
	["showphist"] = make_config_metatable("show-prompt-history"),
	["showw"] = make_config_metatable("show-window-options"),
	["source"] = make_config_metatable("source-file"),
	["splitw"] = make_config_metatable("split-window"),
	["start"] = make_config_metatable("start-server"),
	["suspendc"] = make_config_metatable("suspend-client"),
	["swapp"] = make_config_metatable("swap-pane"),
	["swapw"] = make_config_metatable("swap-window"),
	["switchc"] = make_config_metatable("switch-client"),
	["unbind"] = make_config_metatable("unbind-key"),
	["unlinkw"] = make_config_metatable("unlink-window"),
	["wait"] = make_config_metatable("wait-for"),
}
