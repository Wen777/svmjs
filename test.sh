#!/bin//bash
# run this file from your application's root directory

#VELOCITY_DEBUG_MIRROR=1 VELOCITY_DEBUG=1 meteor run --test
JASMINE_BROWSER=PhantomJS  meteor run --test

# this will trap any errors or commands with non-zero exit status
# by calling function catch_errors()
trap catch_errors ERR;
function catch_errors() {
   EXITCODE=$?
   # do whatever on errors
   echo ""
   echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
   echo "Mocha aborted with a status code of $EXITCODE"
   echo "!!!!!!!!"
   exit $EXITCODE;
}

# if we made it here... we're good
#   errors/exits should have been trapped above
echo ""
echo "mocha completed with a status code of $?"
echo ""
echo "              ____"
echo "            /____ \`\\"
echo "           ||_  _\`\ \\"
echo "     .-.   \`|O, O  ||"
echo "     | |    (/    -)\\"
echo "     | |    |\`-'\` |\\\`"
echo "  __/  |    | _/  |"
echo " (___) \\.  _.\\__. \`\\___"
echo " (___)  )\/  \\    _/  ~\."
echo " (___) . \\   \`--  _    \`\\"
echo "  (__)-    ,/        (   |"
echo "       \`--~|         |   |"
echo "           |         |   | You Win!"


# return exit code 0
exit 0
