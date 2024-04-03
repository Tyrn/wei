# Wei

## Notes

- [Fight for a Robinson Crusoe TOC](https://www.reddit.com/r/typst/comments/1brnchc/create_a_chapterbychapter_synopsis_mirrored_in/)

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
