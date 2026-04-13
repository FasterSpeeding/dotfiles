import os
import subprocess


SERVICES = filter(None, os.environ.get("DOTFILE_SERVICES", "").split(","))


def main() -> None:
    for name in SERVICES:
        subprocess.call(["subprocess", "enable", "--now", name], check=True)


if __name__ == "__main__":
    main()
