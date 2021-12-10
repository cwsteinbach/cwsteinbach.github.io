#!/usr/bin/env bash

git push origin `git subtree split --prefix public main`:site --force
