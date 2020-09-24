function fish_user_key_bindings
  fzf_key_bindings
  # change the binding ot enter vim mode 
  bind -M insert \cc 'set fish_bind_mode default; commandline -f repaint'
end
