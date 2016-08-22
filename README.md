## Ad-Hoc Git Filters for TMSU

This repository piggy backs off of a personal experiment with version
controlling the tag database of TMSU. The assumption is that you have an SQL
`.dump` of the database under `.tmsu/db.sql` which git tracks.

These filters translate the opaque `id`s in TMSU's database to and from
something relatively readable, so that the repository contains helpful diffs.

## Usage

This repo has an example `.gitattributes`. The filter's themselves are under
`.gitfilters/tmsu.db.sql` and named `clean` and `smudge`. To use, all you
really need to do is copy the `.gitfilters` and `.gitattributes` to your
repository and then config git to use the filters:

    $ git config filter.tmsu.clean .gitfilters/tmsu.db.sql/clean
    $ git config filter.tmsu.smudge .gitfilters/tmsu.db.sql/smudge

## Edits

If you want to change the path of the TMSU database file, then you just need to
edit `.gitattributes` and the `clean` and `smudge` scripts as appropriate.

Also, note that the filter scripts depend on several ancillary files, so if you
move things around, be sure to set the paths in the scripts accordingly--the
appropriate variable names should be fairly obvious.
