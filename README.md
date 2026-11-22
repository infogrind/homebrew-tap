# Infogrind's Homebrew Tap

Most of these are pretty simple scripts and probably not of great use to anyone
other than me. I've just created my own tap and added them here so that I can
install them more easily via homebrew on my home and work MacBooks. So
basically, this is my private repository.

## Installation

To set up:

    brew tap infogrind/tap

Afterwards, simply install the available Formulae like you would any other using
`brew install <formula>`.

Available Formulae:

* `allflac2mp3` – On-the-fly conversion of flac files to mp3
* `baruch` – Rule-based backup of a Synology NAS to several drives, docked one at a time
* `brewreview` – Interactively review installed Homebrew formulae and remove unneeded ones
* `ccmove` – Move PostFinance credit card statements from Downloads into an archive
* `checkurl` – Use `curl` to quickly check if a URL responds
* `dupdirs` – Find duplicates in two different directories
* `fullpath` – Show full path of any file or directory
* `gitremotes` – Show all defined remotes with their URL in a git repository
* `gitscan` – Display remote info about a bunch of git repositories
* `gpt-epub-rename` – Rename EPUB files with the help of an LLM (work in progress:
  the formula currently points to a local source tarball, so it only installs on
  the machine where it was built)
* `hdclear` – Wipe, surface-test and ext4-format an external disk before using it for backups
* `hostcheck` – Perform a number of tests to see if a host is reachable
* `ibkrstmt` – Move Interactive Brokers activity statements from Downloads into an archive
* `imdbtag` – Quickly and easily rename downloaded movie files using TMDb (not IMDb!) lookup
* `ipadmp4` – Convert movies to MP4 for the iPad TV app, with surround audio and subtitles
* `massrename` – Mass-rename files using regular expressions
* `pftoynab` – Convert PostFinance CSV account exports into YNAB's file-based import format
* `pythonformula` – Convert a Python `uv.lock` file to a Homebrew formula dependency format
* `spotify_playlist` – Create a Spotify playlist from MP3 directories or M3U playlists
* `sva-form` – Monthly SVA Zürich hourly payslips (Stundenlohnabrechnung) and year-end summary
* `taxcalc` – Estimate Swiss income and wealth taxes (Kanton Zürich + direkte Bundessteuer)
* `tomp4` – Convert video files to MP4 with sensible ffmpeg settings
* `videoinfo` – Display video stream info (codec)
