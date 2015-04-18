This tool help Linux users to backup and restore system configurations
in your working environment quickly and easily.

# Install

Change to your $APP_HOME directory and run:
`git clone https://github.com/leetschau/sysClone.git`

# Usage

In your $APP_HOME/sysClone directory.

## Backup

To backup configurations in working environment to this repository:

    ./sc bak
    git diff
    git add -A
    git ci -m "some changes"
    git push origin --all

## Restore

To restore configurations in this repository to a new OS:
`./sc res`;

For command format help: `./sc`.
