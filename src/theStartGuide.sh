#!/bin/bash
# This script only used for testing and demostration.
# created by crane zhou on 2021.11.30
#

SAMPLE_BASHSCRIPT_VERSION=0.1.0

# ------------------
# main routine
# ------------------
#parse_opts

print_hello () {
  echo Hello $1
}

print_bash_version () {
  echo "Bash version: ${BASH_VERSION}"
}

print_bash_time() {
  currTime=`date "+%Y-%m-%d %H:%M:%S"`
  currTimestamp=`date -d "$currTime" +%s`

  currUTCTime=$(TZ=UTC date +%Y-%m-%d" "%H:%M:%S)

  echo $currTime
  echo $currTimestamp

  echo $currUTCTime " (UTC Time)"
}

main() {
  echo "hello world!"
  print_hello $USER

  print_bash_version

  print_bash_time

  echo $(basename $0) ", You are welcome! ;-P"
  echo "(version: " $SAMPLE_BASHSCRIPT_VERSION")"

#  parse_opts "$@"
#  parse_opt "$@"

}

main "$@"
