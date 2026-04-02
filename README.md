# dhall-directory-tree

Generate a directory tree from a Dhall file.

This action runs:

```bash
dhall to-directory-tree --file $dhall_file --output $output_dir --allow-path-separators
```

## Inputs

### `dhall_file`

Path to the source Dhall file.

### `output_dir`

Path to the output directory.

## Outputs

None.

## Example usage

```yaml
name: Generate directory tree

on:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6

      - name: Generate files from Dhall
        uses: nikita-volkov/dhall-directory-tree@v1
        with:
          dhall_file: config.dhall
          output_dir: generated
```
