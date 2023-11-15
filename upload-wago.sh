#!/bin/sh

LATEST_GIT_TAG="$1"
CHANGELOG=$(jq --slurp --raw-input '.' < "CHANGELOG.md")

### WAGO Upload
# Docs: https://docs.wago.io/#introduction

WAGO_METADATA=$(cat <<-EOF
{
   "label": "$LATEST_GIT_TAG",
   "stability": "stable",
   "changelog": $CHANGELOG,
   "supported_wotlk_patch": "3.4.3",
   "supported_classic_patch": "1.15.0"
}
EOF
)

curl -sS \
    -H "authorization: Bearer $WAGO_API_TOKEN" \
    -H "accept: application/json" \
    -F "metadata=$WAGO_METADATA" \
    -F "file=@releases/$LATEST_GIT_TAG/Questie-$LATEST_GIT_TAG.zip" \
    "https://addons.wago.io/api/projects/qv634BKb/version"
