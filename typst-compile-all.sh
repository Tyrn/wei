#!/usr/bin/env bash
# set -e
set -u
set -x

typst compile the-hundred-squares-ru.typ        the-hundred-squares-ru.pdf
typst compile the-story-of-queen-casia-ru.typ  the-story-of-queen-casia-ru.pdf
typst compile case-of-the-azure-letter-ru.typ   case-of-the-azure-letter-ru.pdf
typst compile a-case-of-the-missing-god-ru.typ  a-case-of-the-missing-god-ru.pdf
typst compile wizards-and-ministers-ru.typ      wizards-and-ministers-ru.pdf
typst compile the-insider-ru.typ                the-insider-ru.pdf
