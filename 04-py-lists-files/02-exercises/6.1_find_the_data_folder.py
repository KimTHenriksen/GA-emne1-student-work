from pathlib import Path

print(f"Current directory is {Path.cwd()}")

data_directory = Path("..") / "data"

print(data_directory)
print(data_directory.exists())