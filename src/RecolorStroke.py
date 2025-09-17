import os
import re
from pathlib import Path

try:
    from lxml import etree as ET
    parser = ET.XMLParser(remove_blank_text=True)
except ImportError:
    import xml.etree.ElementTree as ET
    parser = None

# === CONFIG ===
INPUT_DIR = "Lucide Lab"        # folder with your SVGs
OUTPUT_DIR = "Lucide Lab"   # output folder
NEW_COLOR = "#ffffff"      # change this to whatever color you want
# ==============

os.makedirs(OUTPUT_DIR, exist_ok=True)

def recolor_svg(input_path, output_path, new_color):
    if parser:  # lxml
        tree = ET.parse(input_path, parser)
        root = tree.getroot()
    else:
        tree = ET.parse(input_path)
        root = tree.getroot()

    for elem in root.iter():
        # Change stroke if present
        if "stroke" in elem.attrib:
            elem.attrib["stroke"] = new_color

        # Fix inline styles too
        if "style" in elem.attrib:
            style = elem.attrib["style"]
            style = re.sub(r"(stroke\s*:\s*)([^;]+)", r"\1" + new_color, style)
            style = re.sub(r"(fill\s*:\s*)([^;]+)", r"\1" + new_color, style)
            elem.attrib["style"] = style

    tree.write(output_path, encoding="utf-8", xml_declaration=True)

# Process all SVGs
for svg_file in Path(INPUT_DIR).glob("*.svg"):
    out_path = Path(OUTPUT_DIR) / svg_file.name
    recolor_svg(svg_file, out_path, NEW_COLOR)
    print(f"🎨 Recolored: {svg_file.name} → {out_path}")
