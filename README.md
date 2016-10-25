# environment
config files

## TMUX
prefix: <C-j>

```
 tmux new -s session_name
```
creates a new tmux session named session_name

```
tmux attach -t session_name
```
attaches to an existing tmux session named session_name

```
tmux switch -t session_name
```
switches to an existing session named session_name

```
tmux list-sessions
```
lists existing tmux sessions

```
tmux detach (prefix + d)
```
detach the currently attached session

```
tmux new-window (prefix + c)
```
create a new window

```
tmux select-window -t :0-9 (prefix + 0-9)
```
move to the window based on index

```
tmux rename-window (prefix + ,)
```
rename the current window

```
tmux split-window (prefix + ")
```
splits the window into two vertical panes

```
tmux split-window -h (prefix + %)
```
splits the window into two horizontal panes

```
tmux swap-pane -[UDLR] (prefix + { or })
```
swaps pane with another in the specified direction

```
tmux select-pane -[UDLR]})")
tmux select-pane -t :.+
```
selects the next pane in numerical order

```
prefix + r
```
reload tmux.conf  (source-file ~/.tmux.conf)

```
prefix + j
```
Switch between panes
