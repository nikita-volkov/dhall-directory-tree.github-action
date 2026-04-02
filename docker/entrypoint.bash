#!/bin/bash -e

: "${dhall_file:?Missing dhall_file input}"
: "${output_dir:?Missing output_dir input}"

dhall to-directory-tree --file "$dhall_file" --output "$output_dir" --allow-path-separators

if [ ! -d "$output_dir" ]
then
  echo "Error: Output directory was not created"
  exit 1
fi

echo "✓ Successfully generated Dhall directory tree"
