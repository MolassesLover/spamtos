#!/bin/scons

# region Modules

import colorama
from colorama import Fore
import os
import subprocess

# ednregion


def BuildParu():
    print(":: Now compiling Paru!")

    if bool(os.path.exists("pkg/paru")) is not True:
        print(
            f":: {Fore.RED}Error{Fore.RESET}: Missing Git submodule {Fore.YELLOW}pkg/paru{Fore.RESET}!\nPlease make sure the Git submodules have been cloned."
        )
        quit()

    subprocess.run(
        """
            cd pkg/paru; git checkout $(git describe --tags `git rev-list --tags --max-count=1`); \
            cargo build --release; cd ../..; \
            cp pkg/paru/target/release/paru src/airootfs/usr/local/bin/paru; \
            chmod +x pkg/paru/target/release/paru; chmod +x src/airootfs/usr/local/bin/paru;
        """,
        shell=True,
        stdout=subprocess.DEVNULL,
    )


def Build():
    if bool(os.path.exists("/tmp/SpamtOS-tmp")):
        print(f":: Directory {Fore.YELLOW}/tmp/SpamtOS-tmp{Fore.RESET} exists, {Fore.RED}deleting{Fore.RESET} it.")

        subprocess.run(
            "sudo rm -fr /tmp/SpamtOS-tmp",
            shell=True,
            stdout=subprocess.DEVNULL,
        )
    else:
        os.mkdir("/tmp/SpamtOS-tmp")

    subprocess.run(
        "sudo mkarchiso -v -w /tmp/SpamtOS-tmp src",
        shell=True,
        stdout=subprocess.DEVNULL,
    )


def Main():
    BuildParu()
    Build()

Main()