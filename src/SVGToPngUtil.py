from pathlib import Path
import subprocess

# config
input_dir = Path(r"Lucide Lab SVG")
output_dir = Path(r"Lucide Lab")
inkscape_path = r"C:\Program Files\Inkscape\bin\inkscape.exe" # Change this to your inkscape path

output_dir.mkdir(exist_ok=True)

count = 0
for svg_file in input_dir.glob("*.svg"):
    png_file = output_dir / f"{svg_file.stem}.png"

    if png_file.exists():
        print(f"⏭️ skipping (already exists): {svg_file.name}")
        continue

    print(f"🎨 converting: {svg_file.name}")
    subprocess.run([
        inkscape_path,
        str(svg_file),
        f"--export-filename={png_file}"
    ])
    count += 1

print(f"✅ all done — processed {count} files.")
input("press Enter to exit…")
