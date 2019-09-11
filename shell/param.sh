#!/bin/bash
echo '$@: ' $@
echo '$0: ' $0
echo '$2: ' $2
echo '$#: ' $#
echo '$*: ' $*
echo '$@: ' $@
echo '$?: ' $?
echo '$$: ' $$

echo '"$*": ' "$*"
for i in "$*";do
  echo $i
done

echo '"$@": ' "$@"
for i in "$@";do
  echo $i
done
