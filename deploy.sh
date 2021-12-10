#!/usr/bin/env bash

git push origin HEAD:site && git subtree push --prefix public origin main
