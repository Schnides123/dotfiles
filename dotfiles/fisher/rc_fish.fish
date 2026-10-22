# Sponge configuration
set sponge_delay 20
set sponge_successful_exit_codes 0 127 130

# plugin-grc wraps `ulimit`, which is a fish builtin with no executable for grc
# to run, so the wrapper breaks it. The plugin only honours its ignore list when
# grc_plugin_execs is unset; that universal variable is a leftover from upstream
# grc.fish, which plugin-grc replaces.
if functions -q grc.wrap
    set -q -U grc_plugin_execs; and set -e -U grc_plugin_execs
    set -g grc_plugin_ignore_execs ulimit
end
