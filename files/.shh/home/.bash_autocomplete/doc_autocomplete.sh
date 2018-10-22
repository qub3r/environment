#!/usr/bin/env bash

_doc_opts() {
    case "$1" in
        '') 
            docker --help | awk '/^Commands:/,/$1/ { if ($1 ~ /^[a-z]*$/) print $1 }' \
                | { cat ; awk '$0 ~ /^_doc_/ { split($0, cmd, "_") ; print cmd[3] }' $(which doc) ; } | sort
            ;;
        exec)
            case "$2" in
                -) 
                    awk '{print "-"$0}' ~/.bash_temporary/jobs 2>/dev/null
                    ;;
                *)
                    local jids=( $(cat ~/.bash_temporary/jobs 2>/dev/null) )
                    local dids=( $(sudo -E docker ps --format '{{.Names}}' 2>/dev/null) )
                    if [ -z "${dids[*]}" ] ; then
                        printf -- $'%s\n' "${jids[@]}" "${dids[@]}" | sort | uniq | awk '{print "-"$0}'
                    else
                        printf -- $'%s\n' "${jids[@]}" "${jids[@]}" "${dids[@]}" | sort | uniq -u
                        printf -- $'%s\n' "${jids[@]}" "${dids[@]}" | sort | uniq -d | awk '{print "-"$0}'
                    fi
                    ;;
            esac
            ;;
    esac
}

_doc_autocomplete() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[*]:1:$COMP_CWORD-1}"
  opts="$(_doc_opts "$prev" "$cur")"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

complete -F _doc_autocomplete doc $@