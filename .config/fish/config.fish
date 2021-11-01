fish_add_path --move /Users/smefju/bin/

set fish_greeting

if status is-interactive
  function fish_prompt
    echo
    printf '%s %s' (set_color yellow)(basename (prompt_pwd)) (set_color cyan) 'λ' (set_color normal)
  end
end
