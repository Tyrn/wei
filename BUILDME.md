# Wei
## Plain text reformatting
- Comment out code, if any
- Add newlines before each paragraph
```
sd '^\s{2,}' '\n' f.typ
```
- Replace opening dashes with em-dashes
```
sd -- '^--\s+' '---~' f.typ
```
-Replace space decorated dashes with em-dashes
```
sd -- '\s+--\s+' '~---~' f.typ
```