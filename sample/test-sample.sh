#!/bin/bash
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

BEFORE_TEXT='かな変換ﾃｽﾃｨｰﾝｸﾞ｡　１－２－３'
RESULT=`bash $SCRIPT_DIR/run-sample.sh $BEFORE_TEXT`

AFTER_TEXT='カナ変換テスティーング。 1-2-3'
if [ "$AFTER_TEXT" != "$RESULT" ]; then
    echo "SAMPLE TEST FAILED"
    echo "Expected: \"$AFTER_TEXT\""
    echo "Actual:   \"$RESULT\""
    exit 1
fi

echo "SAMPLE TEST SUCCEEDED"
