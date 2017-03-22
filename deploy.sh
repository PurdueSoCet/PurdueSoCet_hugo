#!/bin/bash
echo "Beginning hugo website deployment"

if [ $# -ne 1 ] ; then
  echo "Usage: ./deploy_site.bash <path to forked repo>"
  exit 1
fi

HUGO_DIR=`pwd`

hugo -d $1

if [ $? -ne 0 ] ; then
  echo "Error: Failed to build hugo site"
  exit 2
fi

cd $1

git add -A

if [ $? -ne 0 ] ; then
  echo "Error: Failed to add newly generated files"
  cd $HUGO_DIR
  exit 3
fi

git commit -m "rebuilt site `date`"

if [ $? -ne 0 ] ; then
  echo "Error: Failed to commit built site"
  cd $HUGO_DIR
  exit 4
fi

git push origin master

if [ $? -ne 0 ] ; then
  echo "Error: Failed to push built site"
  cd $HUGO_DIR
  exit 5
fi

cd $HUGO_DIR

echo "Website build successful.  Navigate to the website repository on github and create a pull request."
