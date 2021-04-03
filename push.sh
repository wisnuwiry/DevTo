#! /bin/sh

flutter analyze .
flutter format .
flutter test
git push