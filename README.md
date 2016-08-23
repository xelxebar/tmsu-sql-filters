## Ad-Hoc Git Filters for TMSU

This repository piggy backs off of a personal experiment with version
controlling the tag database of TMSU. The assumption is that the TMSU database
is located at `.tmsu/db`.

These filters both convert the binary database into SQL statements as well as
translate the opaque `id`s to and from something relatively human-readable, so
that the repository contains helpful diffs.

## Usage

This repo has an example `.gitattributes`. The filter's themselves are under
`.gitfilters/tmsu.db` and named `clean` and `smudge`. To use, all you really
need to do is copy the `.gitfilters` and `.gitattributes` to your repository
and then config git to use the filters:

    $ git config filter.tmsu.clean .gitfilters/tmsu.db/clean
    $ git config filter.tmsu.smudge .gitfilters/tmsu.db/smudge

## Edits

If you want to change the path of the TMSU database file, then you just need to
edit `.gitattributes` and the `clean` and `smudge` scripts as appropriate.
