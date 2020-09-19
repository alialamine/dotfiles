###-begin-serverless-completion-###
_sls_upsearch () {
  local slashes=${PWD//[^\/]/}
  local directory="$PWD"
  local n=0
  for (( n=${#slashes}; n>0; --n ))
  do
    test -e "$directory/$1" && echo `readlink -m "$directory/$1"` && return 0
    directory="$directory/.."
  done
  return 1
}
_sls()
{
    local cur prev words cword
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    words="${COMP_WORDS}"

    local COMMANDS=(
        "project"
        "function"
        "endpoint"
        "event"
        "dash"
        "stage"
        "region"
        "resources"
        "plugin"
        "variables"
        "help"
    )

    local command
    if [[ ${COMP_CWORD} -gt 1 && ${COMMANDS[@]} =~ ${COMP_WORDS[1]} ]]; then
        command=${COMP_WORDS[1]}
    fi

    if [ "$command" = "" ]; then
      # no command yet, show what commands we have
      COMPREPLY=( $( compgen -W '${COMMANDS[@]}' ${cur} ) )
      return 0
    else
      case $command in
        project)
          local SUBCOMMANDS=(
            "create"
            "init"
            "install"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        function)
          local SUBCOMMANDS=(
            "run"
            "deploy"
            "create"
            "logs"
            "remove"
            "rollback"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          elif [[ ${COMP_CWORD} -eq 3 ]]; then
            local fnames='';
            local projectFile=`_sls_upsearch 's-project.json'`;
            if [ -f "$projectFile" ] ; then
              local projectDir=`dirname "$projectFile"`;
              fnames=`find "$projectDir" -type f -name "s-function.json" |sed "s#\(.*\)/.*#\1#" | rev |cut -d"/" -f1 | rev`
            fi
            COMPREPLY=( $( compgen -W '${fnames}' ${cur} ) )
            return 0
          fi
        ;;

        endpoint)
          local SUBCOMMANDS=(
            "deploy"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        event)
          local SUBCOMMANDS=(
            "deploy"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        dash)
          local SUBCOMMANDS=(
            "deploy"
            "summary"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        stage)
          local SUBCOMMANDS=(
            "create"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        region)
          local SUBCOMMANDS=(
            "create"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        resources)
          local SUBCOMMANDS=(
            "deploy"
            "diff"
            "remove"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        plugin)
          local SUBCOMMANDS=(
            "create"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;

        variables)
          local SUBCOMMANDS=(
            "list"
            "set"
            "unset"
          )
          
          if [[ ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=( $( compgen -W '${SUBCOMMANDS[@]}' ${cur} ) )
            return 0
          fi
        ;;
      
      esac
    fi

    return 0
} &&

complete -F _sls serverless
complete -F _sls sls
complete -F _sls slss
###-end-serverless-completion-###
