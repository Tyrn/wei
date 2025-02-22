#!/usr/bin/env python
"""
Custom *.typ formatter template.
"""

import os
import subprocess
import sys
from pathlib import Path

SRC_DIRS = (".",)
EXTENSIONS = (".TYP",)

for dir in SRC_DIRS:
    for root, _, files in os.walk(Path(dir).resolve()):
        for name in files:
            if Path(name).suffix.upper() in EXTENSIONS:
                target = Path(root) / name
                subprocess.run(["typstyle", "-i", target])
                if len(sys.argv) > 1 and sys.argv[1] == "-v":
                    print(target.relative_to(os.getcwd()))
