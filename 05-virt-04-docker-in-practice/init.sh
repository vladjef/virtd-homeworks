#!/bin/sh

git_project="https://github.com/vladjef/shvirtd-example-python"
target_dir="/opt/shvirtd-example-python"

if [ ! -f "${target_dir}/compose.yaml" ]; then
  git clone ${git_project} ${target_dir}
else
  echo "Probably the project ${git_project} already cloned."
fi

cd ${target_dir} ||
die "Could not cd to ${target_dir} directory"

docker compose up -d
