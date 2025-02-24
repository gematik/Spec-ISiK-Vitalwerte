import os
import shutil
import tempfile
import subprocess

# Define the source repository and branch
SOURCE_REPO = "https://github.com/gematik/spec-ISiK-Basismodul"
SOURCE_BRANCH = "main-isik-stufe-4"

# Define the list of folders to update
FOLDERS = [".github", "scripts"]

# Define the list of files to exclude from updating
EXCLUDE_FILES = ["config.yaml", "ToolUpdate.yml"]

def run_command(command, cwd=None):
    result = subprocess.run(command, shell=True, cwd=cwd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error running command: {command}\n{result.stderr}")
    return result

def clone_source_repo(temp_dir):
    run_command(f"git clone --branch {SOURCE_BRANCH} {SOURCE_REPO} {temp_dir}")
#TODO improve performance, since the whole repository is cloned instead instead of just the folders that are needed  

def copy_folders(temp_dir, folders, exclude_files):
    for folder in folders:
        src_folder = os.path.join(temp_dir, folder)
        if os.path.exists(src_folder):
            dest_folder = os.path.join(os.getcwd(), folder)
            if not os.path.exists(dest_folder):
                os.makedirs(dest_folder)
            for root, _, files in os.walk(src_folder):
                rel_path = os.path.relpath(root, src_folder)
                dest_path = os.path.join(dest_folder, rel_path)
                if not os.path.exists(dest_path):
                    os.makedirs(dest_path)
                for file in files:
                    if file not in exclude_files:
                        src_file = os.path.join(root, file)
                        dest_file = os.path.join(dest_path, file)
                        shutil.copy2(src_file, dest_file)
        else:
            print(f"Folder {folder} does not exist in the source repository.")

def update_folders(folders, exclude_files):
    print("Updating folders...")
    with tempfile.TemporaryDirectory() as temp_dir:
        clone_source_repo(temp_dir)
        copy_folders(temp_dir, folders, exclude_files)
    print("Update complete.")

def main():
    update_folders(FOLDERS, EXCLUDE_FILES)

if __name__ == "__main__":
    main()
