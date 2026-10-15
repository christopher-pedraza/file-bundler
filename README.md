# File Bundler

A lightweight, zero-dependency utility to quickly merge multiple files into a single `.txt` document. It keeps your combined files organized by automatically injecting a clear header with the original filename before each file's content.

Perfect for bundling code files to feed into LLMs as context, consolidating logs, or quickly stitching text files together.

## Features
* **Zero Dependencies:** Runs natively on Windows (Batch) and Linux/macOS (POSIX Shell).
* **Drag-and-Drop:** Built for speed—just highlight your files and drop them onto the script.
* **Preserves Identity:** Clearly separates file contents with bold, identifiable headers.

## Output Format
The generated `combined_files.txt` will look like this:

```text
========================================
FILE: main.py 
========================================

print("Hello World")

========================================
FILE: styles.css 
========================================

body { background: #000; }

```

## Usage: Windows

1. Highlight the files you want to combine.
2. Drag and drop them directly onto `CombineFiles.bat`.
3. A `combined_files.txt` will be instantly generated in the same directory as the script.

## Usage: Linux & macOS

### Terminal Method

Make the script executable and pass your files as arguments:

```bash
chmod +x CombineFiles.sh
./CombineFiles.sh src/*.py components/*.tsx

```

### Drag-and-Drop Method (Linux Desktop Environments)

To enable the same drag-and-drop experience as Windows on a Linux desktop (GNOME, KDE, etc.):

1. Download the file named `FileCombiner.desktop` onto your Desktop.
2. Update the path to the shell script in the configuration:

```ini
[Desktop Entry]
Type=Application
Name=File Combiner
Exec=/path/to/repo/CombineFiles.sh %F
Terminal=true

```

3. Right-click the `.desktop` file and allow launching/execution. You can now drag and drop files onto this icon.

## License

MIT License - feel free to modify and adapt.
