source /opt/homebrew/opt/asdf/libexec/asdf.fish

function asdf-each --wraps asdf --argument-names plugin
  for plugin_version in (asdf list $plugin)
    asdf-command $plugin (string trim $plugin_version) $argv[2..-1]
  end
end

function asdf-command --wraps asdf --argument-names plugin --argument-names plugin_version
  asdf shell $plugin $plugin_version
  eval $argv[3..-1]
  asdf shell $plugin --unset
end
