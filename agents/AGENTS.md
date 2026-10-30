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

`node`, `java`, `maven` and `uv` come from mise.
The project's `.nvmrc` decides the Node version — never install, update, or switch toolchains yourself.
Do not run `uv self update`; bump uv via `programs/mise.nix`.
The Angular CLI is not global: use `npx ng` or npm scripts.

## Secrets

Secrets exist only as `op://` references resolved via the 1Password CLI (`op run`, `op read`).
Never echo, log, or persist token values.

## Git commits

Commit your work as you go, one task at a time; do not push unless explicitly asked.

- One commit = one logical change; keep commits small.
- Mechanical bulk changes (renames, formatting, dependency bumps) go in their own commit, separate from behavior changes.
- Every commit in a chain must build and pass tests, so `git bisect` stays usable.
- Finish the commit chain for the current task before starting the next one.
- Stage files explicitly; never `git add -A`; review `git diff --cached` before committing.
- Message: short imperative subject, matching the repo's existing `git log` style.
- Never commit secrets (see above); never `--no-verify` or `--no-gpg-sign`; never rewrite or force-push published history.
