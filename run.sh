if [ -z "$WERCKER_SSH" ]
then
    fail 'WERCKER_SSH is missing, use wouter/setup-ssh before using this step'
fi

echo "$WERCKER_SSH $WERCKER_SCRIPT_SSH_CODE"
$WERCKER_SSH $WERCKER_SCRIPT_SSH_CODE
