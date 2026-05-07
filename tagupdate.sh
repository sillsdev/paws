#! /usr/bin/bash
TAGNUMBER=v$1
git tag --delete $TAGNUMBER
git push --delete origin $TAGNUMBER
git tag $TAGNUMBER
git push origin $TAGNUMBER
