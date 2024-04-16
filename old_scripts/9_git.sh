#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Setting git global email and name'

git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"

echo_done
