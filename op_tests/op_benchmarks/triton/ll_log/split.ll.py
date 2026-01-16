import re
import sys
from pathlib import Path

def split_ir_dump():
    if len(sys.argv) < 2:
        print("Usage: python script_name.py <your_log_file.txt>")
        return

    input_path = Path(sys.argv[1])
    if not input_path.exists():
        print(f"Error: File '{input_path}' not found.")
        return

    output_dir = Path(f"split_{input_path.stem}")
    output_dir.mkdir(exist_ok=True)

    # Regex breakdown:
    # IR Dump After   -> Look for this exact string
    # \s+             -> Match one or more spaces
    # (.*?)           -> Capture everything (non-greedy) into Group 1
    # (?=\s+on|\s*\() -> Stop when you hit " on" or a "(" (Lookahead)
    header_pattern = re.compile(r'IR Dump After\s+(.*?)(?=\s+on|\s*\()')
    
    current_file = None
    file_count = 0

    print(f"Processing {input_path}...")

    with input_path.open('r', encoding='utf-8', errors='ignore') as infile:
        for line in infile:
            match = header_pattern.search(line)
            
            if match:
                if current_file:
                    current_file.close()
                
                file_count += 1
                # Extract and clean the pass name
                pass_name = match.group(1).strip()
                # Replace spaces and illegal chars with underscores for safe filenames
                clean_pass_name = re.sub(r'[\s\\/*?:"<>|]', "_", pass_name)
                
                new_filename = f"{file_count:03d}_{clean_pass_name}.ll"
                file_path = output_dir / new_filename
                
                current_file = file_path.open('w', encoding='utf-8')
            
            if current_file:
                current_file.write(line)

    if current_file:
        current_file.close()

    print(f"Success! {file_count} files created in: {output_dir}")

if __name__ == "__main__":
    split_ir_dump()


