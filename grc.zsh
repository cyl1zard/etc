if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then
  # prevent grc aliases from overriding zsh completions
  setopt COMPLETE_ALIASES

  # supported commands
  cmds=(
    cc \
    configure \
    cvs \
    df \
    diff \
    dig \
    gcc \
    gmake \
    ifconfig \
    last \
    ldap \
    ls \
    make \
    mount \
    mtr \
    netstat \
    ping \
    ping6 \
    ps \
    traceroute \
    traceroute6 \
    wdiff \
  );

  # set alias for available commands
  for cmd in $cmds ; do
    if (( $+commands[$cmd] )) ; then
      alias $cmd="grc --colour=auto $cmd"
    fi
  done

  # clean up variables
  unset cmds cmd
fi
