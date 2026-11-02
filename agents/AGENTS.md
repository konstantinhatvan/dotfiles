# General

## CLI tools

The following tools are preinstalled on this machine.

| Task                                                     | Tool                                   |
|----------------------------------------------------------|----------------------------------------|
| Process JSON                                             | `jq`                                   |
| Find entries in the filesystem                           | `fd` (instead of `find`)               |
| Recursively search directories for a regex pattern       | `rg` (instead of `grep -r`)            |
| Search and Rewrite code at large scale using AST pattern | `ast-grep` — load the `ast-grep` skill |
| Run project tasks defined in a `Taskfile.yml`            | `task` (GoTask)                        |

## Toolchains

`node`, `java`, `maven` and `uv` come from mise.
The project's `.nvmrc` decides the Node version — never install, update, or switch toolchains yourself.
Do not run `uv self update`; bump uv via `programs/mise.nix`.
The Angular CLI is not global: use `npx ng` or npm scripts.

## Secrets

Secrets exist only as `op://` references resolved via the 1Password CLI (`op run`, `op read`).
Never echo, log, or persist token values.

## Writing

- Documentation should only add non-obvious context or prevent mistakes.
- Keep a single source of truth for a documented fact. Put it where the next editor of that fact will look. If the fact needs to be documented elsewhere, reference it. Never restate.
- Document what the code cannot say itself (rationale, caveats). Never restate content the reader sees by opening the file.
- Documentation states the current state. History belongs in the git log. Reassurance in the PR description.

## Git commits

Commit your work as you go, one task at a time. Do not push unless explicitly asked.

- One commit is one logical change. Keep commits small.
- A commit ships the final documentation of the behavior it introduces. Fix documentation of the same unpushed chain by amend or rebase. Never in follow-up commits.
- No commit may reference what a later commit adds. This decides commit order.
- Mechanical bulk changes (renames, formatting, dependency bumps) go in their own commit, separate from behavior changes.
- Every commit in a chain builds and passes tests. This keeps `git bisect` usable.
- Finish the commit chain for the current task before starting the next one.
- Stage files explicitly. Never `git add -A`. Review `git diff --cached` before committing.
- The message has a short imperative subject in the repo's `git log` style. Rationale with no file to live in belongs in the message. Never in repo docs.
- Never commit secrets (see above). Never `--no-verify` or `--no-gpg-sign`. Never rewrite or force-push published history.
- When rewriting unpushed history, record the old tip SHA first. Move the branch only when the diff against it is empty and every commit message matches its content.
