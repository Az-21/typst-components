import os
import shutil
import sys


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
    print(f"Synced {src} with {dst}")
  except Exception as e:
    print(f"Error syncing: {e}")


def main():
  ensure_windows()

  local_appdata = os.getenv("LOCALAPPDATA")
  target_folder = os.path.join(local_appdata, "typst", "packages", "local", "style")
  source_folder = "./style/"

  delete_folder_if_exists(target_folder)
  copy_folder(source_folder, target_folder)


if __name__ == "__main__":
  main()
