Tiny bash script to swap between work and personal npm accounts.

```
npm install -g cspotcode/npm-config-swap
```

Assuming you have `~/.npmrc-work` with your work credentials and `~/.npmrc-personal`
with your personal credentials:

```shell
npm-config personal
npm whoami
```

... will symlink `~/.npmrc` to point to your personal credentials `~/.npmrc-personal`.

To swap to work creds:

```shell
npm-config work
npm whoami
```

## Notes

Alternative approach: use a bash profile function to set `NPM_CONFIG_USERCONFIG` env var
to point to the path of desired config.
