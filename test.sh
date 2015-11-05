#!/bin//bash
# run this file from your application's root directory

JASMINE_BROWSER=PhantomJS meteor run --test


# this will trap any errors or commands with non-zero exit status
# by calling function catch_errors()
trap catch_errors ERR;
function catch_errors() {
   EXITCODE=$?
   # do whatever on errors
   echo ""
   echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
   echo "Jasmine aborted with a status code of $EXITCODE"
   echo "!!!!!!!!"
   exit $EXITCODE;
}


# if we made it here... we're good
#   errors/exits should have been trapped above
echo "Jasmine completed with a status code of $?"

echo "
#         ┌─┐       ┌─┐
#      ┌──┘ ┴───────┘ ┴──┐
#      │                 │
#      │       ───       │
#      │  ─┬┘       └┬─  │
#      │                 │
#      │       ─┴─       │
#      │                 │
#      └───┐         ┌───┘
#          │         │
#          │         │
#          │         │
#          │         └──────────────┐
#          │                        │
#          │                        ├─┐
#          │                        ┌─┘
#          │                        │
#          └─┐  ┐  ┌───────┬──┐  ┌──┘
#            │ ─┤ ─┤       │ ─┤ ─┤
#            └──┴──┘       └──┴──┘
#                神兽保佑
#                代码无BUG!"

# return exit code 0
exit 0
