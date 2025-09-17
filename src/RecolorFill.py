import os
import re

FOLDER = r""  # change this

changed = 0

for root, _, files in os.walk(FOLDER):
    for file in files:
        if file.endswith(".svg"):
            path = os.path.join(root, file)
            with open(path, "r", encoding="utf-8") as f:
                content = f.read()

            original = content

            # If <svg> tag has no fill, add it
            if 'fill=' not in content:
                content = re.sub(r'<svg([^>]*)>', r'<svg\1 fill="white">', content, count=1)
            else:
                # Replace existing fill="..." values with white
                content = re.sub(r'fill="[^"]*"', 'fill="white"', content)

            if content != original:
                with open(path, "w", encoding="utf-8") as f:
                    f.write(content)
                changed += 1
                print(f"🎨 Recolored: {path}")

print(f"\n✅ Done! Modified {changed} SVG files.")
input("Press Enter to exit...")
