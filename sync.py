import os
import shutil
import sys
from enum import Enum


def ensure_windows():
  if not sys.platform.startswith("win"):
    print("This script is only for Windows.")
    sys.exit(1)


def delete_folder_if_exists(folder_path):
  if os.path.exists(folder_path) and os.path.isdir(folder_path):
    try:
      shutil.rmtree(folder_path)
    except Exception as e:
      print(f"Error deleting folder: {e}")


def copy_folder(src, dst):
  try:
    shutil.copytree(src, dst)
    print(f"Synced {src} -> {dst}")
  except Exception as e:
    print(f"Error syncing: {e}")
    sys.exit()


class SyncMode(Enum):
  FromGitToLocal = 0
  FromLocalToGit = 1


def parse_cli_args(args: list[str]) -> SyncMode:
  arg_count: int = len(args) - 1  # 0th arg is the .py file
  if arg_count != 1:
    print(f"[ FATAL ] Expected 1 sync mode argument, got {arg_count}")
    sys.exit()

  mode: str = args[1]
  if mode == "--from-git-to-local":
    return SyncMode.FromGitToLocal
  if mode == "--from-local-to-git":
    return SyncMode.FromLocalToGit

  print("[ FATAL ] Unexpected mode passed")
  sys.exit()


def main(args: list[str]) -> None:
  ensure_windows()

  local_appdata = os.getenv("LOCALAPPDATA")
  local_style_folder: str = os.path.join(local_appdata, "typst", "packages", "local", "style")
  git_style_folder = "./style/"

  sync_mode: SyncMode = parse_cli_args(args)
  if sync_mode is SyncMode.FromGitToLocal:
    delete_folder_if_exists(local_style_folder)
    copy_folder(git_style_folder, local_style_folder)
  if sync_mode is SyncMode.FromLocalToGit:
    delete_folder_if_exists(git_style_folder)
    copy_folder(local_style_folder, git_style_folder)


if __name__ == "__main__":
  main(sys.argv)
