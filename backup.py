#!/usr/bin/env python
"""
NB PDF files, generated with typst compile, differ from
build to build, so they can't be compared as binaries
with the backup.

With no absolute certainty, they can be compared like this:
    wc -l built.pdf
    wc -l backup.pdf


Create a backup of all the pdf files, example:
    ./backup.py . *.pdf
"""

if __name__ == "__main__":
    import shutil
    import sys
    from pathlib import Path

    target = Path(sys.argv[1])
    for num, source in enumerate(sys.argv[2:]):
        name, ext = Path(source).stem, Path(source).suffix
        shutil.copy(source, target / Path(name + "-x" + ext))
