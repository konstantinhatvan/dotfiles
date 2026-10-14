# General

## CLI tools

The following tools are preinstalled on this machine.

| Task                                                     | Tool                                   |
|----------------------------------------------------------|----------------------------------------|
| Process JSON                                             | `jq`                                   |
| Find entries in the filesystem                           | `fd` (instead of `find`)               |
| Recursively search directories for a regex pattern       | `rg` (instead of `grep -r`)            |
| Search and Rewrite code at large scale using AST pattern | `ast-grep` — load the `ast-grep` skill |

## Toolchains

`node`, `java` and `maven` come from mise.
The project's `.nvmrc` decides the Node version — never install, update, or switch toolchains yourself.
The Angular CLI is not global: use `npx ng` or npm scripts.

## Secrets

Secrets exist only as `op://` references resolved via the 1Password CLI (`op run`, `op read`).
Never echo, log, or persist token values.
