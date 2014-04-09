if [ -z "$WERCKER_SSH" ]
then
    fail 'WERCKER_SSH is missing, use wouter/setup-ssh before using this step'
fi

echo "$WERCKER_SSH $WERCKER_SCRIPT_SSH_CODE"

ENV=''

for f in $VARS_TO_EXPORT
do
    var=$f;
    ENV+=" export $f='${!var}';"
done
echo $ENV

$WERCKER_SSH "($ENV $WERCKER_SCRIPT_SSH_CODE)"
