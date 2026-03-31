# Open Source Audit Scripts

**Student Name:** Shravni Gangadhar Harihar

**Registration Number:** 24bce10462

**Chosen Software:** VLC

## Overview

This repository contains five Bash shell scripts for Linux that perform simple open-source system checks, package inspection, file auditing, log analysis, and manifesto generation. Each script is designed to run on a Linux machine with standard shell utilities.

## Files and Description

- `script1.sh` - System Identity Report
  - Collects system details such as kernel version, logged in user, home directory, uptime, date, and Linux distribution information.
  - Displays the chosen software as `VLC`.

- `script2.sh` - VLC Package Inspector
  - Checks whether the `vlc` package is installed on Debian/Ubuntu systems using `dpkg`.
  - Prints package metadata if installed and displays a short description for `vlc`.

- `script3.sh` - Disk and Permission Auditor
  - Audits a fixed set of directories: `/etc`, `/var/log`, `/home`, `/usr/bin`, and `/tmp`.
  - Reports directory permissions, owner, group, and disk usage size.
  - Also reports the `~/.config/vlc` directory status if it exists.

- `script4.sh` - Log File Analyzer
  - Reads a log file provided as the first argument and counts occurrences of a keyword.
  - Defaults to searching for `error` if no keyword is provided.
  - Prints the last five matching lines from the file.

- `script5.sh` - Open Source Manifesto Generator
  - Interactive script that asks three questions about open-source tools, freedom, and a project idea.
  - Writes a short manifesto to `manifesto_<username>.txt` and prints it on screen.

## Dependencies

The scripts require a Linux shell environment with the following utilities:

- `bash`
- `uname`, `whoami`, `uptime`, `date`
- `grep`, `awk`, `cut`
- `ls`, `du`
- `dpkg` (for `script2.sh` on Debian/Ubuntu systems)

> Note: `script2.sh` is designed for Debian-based systems because it uses `dpkg -l` and `dpkg -s`.

## How to Run Each Script on Linux

Open a terminal in the repository directory and use the following steps:

1. Make the scripts executable:

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

2. Run `script1.sh`:

```bash
./script1.sh
```

3. Run `script2.sh`:

```bash
./script2.sh
```

4. Run `script3.sh`:

```bash
./script3.sh
```

5. Run `script4.sh` with a log file path (required):

```bash
./script4.sh /path/to/logfile.log
```

Optional: specify a keyword to search for:

```bash
./script4.sh /path/to/logfile.log warning
```

6. Run `script5.sh`:

```bash
./script5.sh
```

Follow the prompts to generate your manifesto text file.

## Notes

- These scripts are intended for demonstration on Linux systems.
- If you are not using Debian/Ubuntu, substitute or install the equivalent package tools before running `script2.sh`.
- The manifesto file created by `script5.sh` is saved as `manifesto_<username>.txt` in the current working directory.

