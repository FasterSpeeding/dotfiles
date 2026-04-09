import pathlib
import subprocess
import sys
import shutil
import tempfile


def main() -> None:
    cwd = pathlib.Path(__file__).parent

    with tempfile.NamedTemporaryFile("w+") as file:
        with (cwd / "base" / "header.txt").open("r") as header_file:
            shutil.copyfileobj(header_file, file)

        file.write("\n")
        for path in cwd.glob("**/*.just"):
            file.write(f"import '{path}'\n")

        file.flush()
        subprocess.run(["just", "--justfile", file.name, "--working-directory", str(cwd), *sys.argv[1:]])


if __name__ == "__main__":
    main()
