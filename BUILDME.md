# The Wei Empire

## Build environment

- Use prebuilt binaries with Cargo, just for convenience

```
cargo install cargo-binstall
...
cargo binstall typst-cli
```

- Check typst-cli

```
$ typst --version
typst 0.13.0 (8dce676d)
```

- Format all the source files in the current directory

```
typstyle -i *.typ
```

## Notes

- [A Fight for a Robinson Crusoe TOC](https://www.reddit.com/r/typst/comments/1brnchc/create_a_chapterbychapter_synopsis_mirrored_in/)
- [A great contribution](https://github.com/aarneng/Outline-Summaryst)

## Plain text reformatting

- Comment out code, if any
- Add newlines before each paragraph

```
sd '^\s{2,}' '\n' f.typ
```

Leaving the matched line as is:

```
sd '^\s{2,}' '\n$0' f.typ
```

- Replace opening dashes with em-dashes

```
sd -- '^--\s+' '---~' f.typ
```

- Replace space decorated dashes with em-dashes

```
sd -- '\s+--\s+' '~---~' f.typ
```
